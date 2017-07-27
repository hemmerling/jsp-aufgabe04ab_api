/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hemmerling.aufgabe04ab.controller;

import java.util.Map;

/**
 *
 * @author rhemmerling
 */
public class Topic {
    
    String title;
    String leftHeader;
    String rightHeader;
    Map contentMap;

    public Topic(String title, String leftHeader, String rightHeader,
                 Map contentMap) {
        this.title = title;
        this.leftHeader = leftHeader;
        this.rightHeader = rightHeader;
        this.contentMap = contentMap;
    }
    
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getLeftHeader() {
        return leftHeader;
    }

    public void setLeftHeader(String leftHeader) {
        this.leftHeader = leftHeader;
    }

    public String getRightHeader() {
        return rightHeader;
    }

    public void setRightHeader(String rightHeader) {
        this.rightHeader = rightHeader;
    }

    public Map getContentMap() {
        return contentMap;
    }

    public void setContentMap(Map contentMap) {
        this.contentMap = contentMap;
    }
}
