package com.example.sandbox.osgi.impl;

import org.osgi.framework.BundleActivator;
import org.osgi.framework.BundleContext;

public class Activator implements BundleActivator {
    @Override
    public void start(BundleContext bundleContext) throws Exception {
        System.out.println("Bundle 'com.example.sandbox.osgi' is starting");
    }
    @Override
    public void stop(BundleContext bundleContext) throws Exception {
        System.out.println("Bundle 'com.example.sandbox.osgi' is stopping");
    }
}