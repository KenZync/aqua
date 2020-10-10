package icu.samnyan.aqua.sega.chunithm.service;

import icu.samnyan.aqua.sega.chunithm.dao.userdata.UserTeamRepository;
import icu.samnyan.aqua.sega.chunithm.model.userdata.UserData;
import icu.samnyan.aqua.sega.chunithm.model.userdata.UserTeam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

/**
 * @author samnyan (privateamusement@protonmail.com)
 */
@Service
public class UserTeamService {

    private final UserTeamRepository userTeamRepository;

    @Autowired
    public UserTeamService(UserTeamRepository userTeamRepository) {
        this.userTeamRepository = userTeamRepository;
    }

    public Optional<UserTeam> getByUser(UserData user) {
        return userTeamRepository.findByUser(user);
    }

    public Optional<UserTeam> getByExtId(String userId) {
        return userTeamRepository.findByUser_Card_ExtId(Integer.parseInt(userId));
    }
}
