package com.cootek.smartinput5.ui.skinappshop;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.widget.DrawerLayout;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/** XML compatibility shell after removing the obsolete account/cloud drawer. */
public final class DrawerFragment extends Fragment {
    public static int E = 3;
    @Override public View onCreateView(LayoutInflater inflater, ViewGroup parent, Bundle state) {
        View placeholder = new View(inflater.getContext());
        placeholder.setVisibility(View.GONE);
        return placeholder;
    }
    public void G(int id, DrawerLayout drawer) {
        if (drawer == null) return;
        drawer.setDrawerLockMode(1); // LOCK_MODE_LOCKED_CLOSED, including edge gestures.
        drawer.closeDrawers();
        View panel = drawer.findViewById(id);
        if (panel != null && panel.getParent() instanceof ViewGroup)
            ((ViewGroup) panel.getParent()).removeView(panel);
    }
    public void I() { }
}
