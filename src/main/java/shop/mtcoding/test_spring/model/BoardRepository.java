package shop.mtcoding.test_spring.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface BoardRepository {
    public int insert(@Param("title") String title, @Param("userId") int userId);

    public List<Board> findAll();

    public List<Board> findByuserId(int userId);

    public int deleteById(int id);

    public int updateById(@Param("id") int id, @Param("title") String title);
}
