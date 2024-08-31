/*
 * Copyright (C) 2021-2024 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#define _REALLY_INCLUDE_SYS__SYSTEM_PROPERTIES_H_
#include <sys/_system_properties.h>
#include <sys/sysinfo.h>
#include <android-base/properties.h>
#include <android-base/logging.h>
#include <vector>
#include <sstream> 

#include "property_service.h"
#include "vendor_init.h"

using android::base::GetProperty;
using std::string;

// Reorder based on common usage if possible
std::vector<string> ro_props_default_source_order = {
    "",
    "system.",
    "vendor.",
    "odm.",
    "product.",
    "system_ext.",
};

// ... (rest of the code remains the same)

void set_ro_build_prop(const string &prop, const string &value, bool product = true) {
    std::stringstream prop_name_stream; // Use stringstream for efficient string building

    for (const auto &source : ro_props_default_source_order) {
        prop_name_stream.str(""); 
        if (product) {
            prop_name_stream << "ro.product." << source << prop;
        } else {
            prop_name_stream << "ro." << source << "build." << prop;
        }
        property_override(prop_name_stream.str(), value);
    }
}

void vendor_load_properties() {
    string model = GetProperty("ro.boot.product.model", ""); // Cache the result
    if (model.empty()) {
        model = GetProperty("ro.boot.em.model", "");
    }

    if (model == "SM-T510") {
        set_build_fingerprint("gta3xlwifi", "gta3xlwifixx", "T510XXU5CWA1");
    } else if (model == "SM-T515") {
        set_build_fingerprint("gta3xl", "gta3xlxx", "T515XXU8CVL1");
    } else {
        LOG(ERROR) << __func__ << ": Couldn't identify model!";
        // add more robust error handling 
    }

    set_ro_build_prop("model", model);
    set_ro_build_prop("product", model, false);

    set_low_ram_config();
}
