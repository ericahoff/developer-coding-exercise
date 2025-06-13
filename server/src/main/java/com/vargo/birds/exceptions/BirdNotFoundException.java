package com.vargo.birds;

public class BirdNotFoundException extends RuntimeException {
    public BirdNotFoundException(String message) {
        super(message);
    }
}
