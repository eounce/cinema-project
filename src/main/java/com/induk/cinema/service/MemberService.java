package com.induk.cinema.service;

import com.induk.cinema.domain.Member;
import com.induk.cinema.repository.MemberRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class MemberService {

    private final MemberRepository memberRepository;

    public List<Member> memberList() {
        return memberRepository.findAll();
    }

    public Member findMember(Long id) {
        return memberRepository.findById(id);
    }

    public Long saveMember(Member member) {
        memberRepository.save(member);
        return member.getId();
    }

    public void updateMember(Member member) {
        memberRepository.update(member);
    }

    public void deleteMember(Long id) {
        memberRepository.delete(id);
    }

    public Member login(Member member){
        return memberRepository.login(member);
    }
}
