package com.induk.cinema.util;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PageMaker {

    private Criteria cri;
    private int totalCount;
    private int startPage;
    private int endPage;
    private boolean prev;
    private boolean next;
    private int displayPageNum = 3;

    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
        calcData();
    }

    private void calcData() {
        endPage = (int) (Math.ceil(cri.getPage() / (double) displayPageNum) * displayPageNum);

        startPage = (endPage - displayPageNum) + 1;
        if(startPage <= 0) startPage = 1;

        int tempEndPage = (int) (Math.ceil(totalCount / (double) cri.getPerPageNum()));
        if (endPage > tempEndPage) {
            endPage = tempEndPage;
        }

        prev = startPage == 1 ? false : true;
        next = endPage * cri.getPerPageNum() < totalCount ? true : false;
    }

    public boolean isPrev() {
        return prev;
    }

    public boolean isNext() {
        return next;
    }
}
