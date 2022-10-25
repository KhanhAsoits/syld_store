package com.syld.store.services.client;

import com.syld.store.dto.CategoryDto;
import com.syld.store.dto.CategoryWithChildNumber;
import com.syld.store.dto.ProductViewDto;
import com.syld.store.dto.ShopViewDto;
import com.syld.store.entities.Category;
import com.syld.store.entities.Tag;
import com.syld.store.repositories.TagRepository;
import com.syld.store.services.category.CategoryService;
import com.syld.store.services.product.ProductService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
@Slf4j
@RequiredArgsConstructor
public class ShopService {

    private final ProductService productService;
    private final CategoryService categoryService;

    private final TagRepository tagRepository;

    public Tag GetTagByName(String name){
        return tagRepository.findByTagName(name);
    }
    public ShopViewDto GetData(int page,int limit){
        ShopViewDto shopViewDto = new ShopViewDto();
        try {
//            get categories
            GetCategoryAndTag(shopViewDto);
//          done get categories
            Page<ProductViewDto> productViewDtoList = productService.getByPage(page,limit);
            for(ProductViewDto productViewDto : productViewDtoList.getContent()){
                productViewDto.convertData();
            }
            shopViewDto.setProductViewDtoList(productViewDtoList);
        }catch (Exception e){
            log.info(e.getMessage());
        }
        return shopViewDto;
    }
    public ShopViewDto GetDataByTag(String tag_name,int page,int limit) {
        ShopViewDto shopViewDto = new ShopViewDto();
        try {
//            get categories
            GetCategoryAndTag(shopViewDto);
//          done get categories

            Tag tag = tagRepository.findByTagName(tag_name);
            if (tag!=null){
                Page<ProductViewDto> productViewDtoList = productService.getProductByTag(tag,page,limit);
                for(ProductViewDto productViewDto : productViewDtoList.getContent()){
                    productViewDto.convertData();
                }
                shopViewDto.setProductViewDtoList(productViewDtoList);
            }else {
                throw new Exception("not found!");
            }
        }catch (Exception e){
            log.info(e.getMessage());
        }
        return shopViewDto;
    }
    public ShopViewDto GetDataByCategory(String category_slug,int page,int limit) {
        ShopViewDto shopViewDto = new ShopViewDto();
        try {
//            get categories
            GetCategoryAndTag(shopViewDto);
//          done get categories

            CategoryDto categoryDto = categoryService.getBySlugName(category_slug);
            if (categoryDto!=null){
                Page<ProductViewDto> productViewDtoList = productService.getProductByCategory(categoryDto,page,limit);
                for(ProductViewDto productViewDto : productViewDtoList.getContent()){
                    productViewDto.convertData();
                }
                shopViewDto.setProductViewDtoList(productViewDtoList);
            }else {
                throw new Exception("not found!");
            }
        }catch (Exception e){
            log.info(e.getMessage());
        }
        return shopViewDto;
    }

    public void GetCategoryAndTag(ShopViewDto shopViewDto) {
        List<CategoryDto> categories = categoryService.getAll();
        for (CategoryDto categoryDto : categories){
            CategoryWithChildNumber category = new CategoryWithChildNumber();
            long numOfChild = productService.findProductNumOfCategory(categoryDto);
            category.setCategoryDto(categoryDto);
            category.setProduct_count(numOfChild);
            shopViewDto.getCategories().add(category);
        }
        shopViewDto.setTags(tagRepository.findAll());
    }
}