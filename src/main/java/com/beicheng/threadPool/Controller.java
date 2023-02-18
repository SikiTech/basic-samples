package com.beicheng.threadPool;

import com.beicheng.common.ResultDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * 线程池
 * @author robert
 */
@RestController
@RequestMapping("/threads")
@ResponseBody
public class Controller {

    /**
     * 输出当前线程池信息
     * @return
     */
    @PostMapping("/info")
    ResultDTO<Boolean> createOneNews() {
        return ResultDTO.success(Boolean.FALSE);
    }
}
