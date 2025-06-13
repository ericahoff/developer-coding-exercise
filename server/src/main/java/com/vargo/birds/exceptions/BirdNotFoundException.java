package com.vargo.birds.exceptions;

public class BirdNotFoundException extends RuntimeException {
    public BirdNotFoundException(String message) {
        super(message);
    }
}
