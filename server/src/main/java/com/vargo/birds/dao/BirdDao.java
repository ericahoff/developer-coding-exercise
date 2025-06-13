package com.vargo.birds;

import java.util.List;

public interface BirdDao {
    List<String> getHabitatsForBird(int birdId);
    boolean birdExists(int birdId);
    Bird getBird(int birdId);
}
