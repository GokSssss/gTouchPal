package com.cootek.smartinput5.backup;

/** Explicit, typed additions to the established four-store backup policy. */
public final class BackupKeys137 {
    private BackupKeys137() { }
    public static Class<?> extraType(int namespace, String key) {
        if (namespace != 1 || key == null) return null;
        if ("keyboard_text_size_custom".equals(key)
                || "keyboard_panel_height_portrait_custom".equals(key)
                || "keyboard_panel_height_custom".equals(key)) return Integer.class;
        if ("option_clipboard_slot_num_list".equals(key)
                || "option_clipboard_max_length_list".equals(key)
                || "option_keyboard_text_size_list".equals(key)
                || "option_keyboard_panel_height_portrait_list".equals(key)
                || "option_keyboard_panel_height_list".equals(key)
                || "option_candidate_gap_list".equals(key)
                || "tp_theme137_previous_skin".equals(key)
                || "first_button_type".equals(key)
                || "second_button_type".equals(key)
                || "third_button_type".equals(key)
                || "candidate_first_button_type".equals(key)
                || "candidate_second_button_type".equals(key)
                || "option_eng_candidate_max_words_list".equals(key)) return String.class;
        return "tp_theme137_dark_applied".equals(key) ? Boolean.class : null;
    }
}
