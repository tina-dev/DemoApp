package net.tina.DemoApp.repository;

import net.tina.DemoApp.entity.Book;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public interface ReadingListRepository extends CrudRepository<Book, Long>
{
    @Override
    List<Book> findAll();

    List<Book> findAllById(Iterable<Long> longs);
    
    List<Book> findByIsbn(String isbn);
    
    @Transactional
    void deleteAll();
    
    /*@Modifying
    @Query("update books p set p.description = :description where p.isbn = :isbn")
    Integer updateBook(@Param("description") String description, @Param("isbn") String isbn);*/
}