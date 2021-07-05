package com.induk.cinema.service;

import com.induk.cinema.domain.Movie;
import com.induk.cinema.dto.MovieForm;
import com.induk.cinema.dto.UploadFile;
import com.induk.cinema.repository.MovieRepository;
import com.induk.cinema.util.FileStore;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

@Slf4j
@Service
@RequiredArgsConstructor
public class MovieService {

    private final MovieRepository movieRepository;
    private final FileStore fileStore;

    public List<Movie> movieList() {
        return movieRepository.findAll();
    }

    public Movie findMovie(Long id) {
        return movieRepository.findById(id);
    }

    public Long saveMovie(MovieForm movieForm, MultipartFile multipartFile) throws IOException {
        UploadFile uploadFile = fileStore.storeFile(multipartFile, "movie");
        if(uploadFile == null) {
            uploadFile = new UploadFile("movie_default.png", "movie_default.png", "movie");
        }

        String joinFormat = String.join(",", movieForm.getScreeningFormats());
        movieForm.setPoster(uploadFile.getStoreFilename());
        movieForm.setJoinFormat(joinFormat);
        movieRepository.save(movieForm);

        return movieForm.getId();
    }

    public void updateMovie(MovieForm movieForm, MultipartFile multipartFile) throws IOException {
        UploadFile uploadFile = fileStore.storeFile(multipartFile, "movie");
        if (uploadFile != null) {
            movieForm.setPoster(uploadFile.getStoreFilename());
        }

        log.info("poster = {}", movieForm.getPoster());

        String joinFormat = String.join(",", movieForm.getScreeningFormats());
        movieForm.setJoinFormat(joinFormat);

        movieRepository.update(movieForm);
    }

    public void deleteMovie(Long id) {
        movieRepository.delete(id);
    }
}
