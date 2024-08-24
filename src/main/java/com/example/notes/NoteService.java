package com.example.notes;

import java.util.List;

public interface NoteService {

    List<NoteEntity> getAllNotes();
    void save(NoteDto noteDto);

    NoteDto getRandomNote();
}
