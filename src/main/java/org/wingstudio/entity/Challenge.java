package org.wingstudio.entity;

/**
 * Created by liao on 16-12-22.
 */
public class Challenge {
    private Integer id;
    private String challenger;
    private String getChallenged;
    private Integer winner;
    private String subjectName;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getChallenger() {
        return challenger;
    }

    public void setChallenger(String challenger) {
        this.challenger = challenger;
    }

    public String getGetChallenged() {
        return getChallenged;
    }

    public void setGetChallenged(String getChallenged) {
        this.getChallenged = getChallenged;
    }

    public Integer getWinner() {
        return winner;
    }

    public void setWinner(Integer winner) {
        this.winner = winner;
    }

    public String getSubjectName() {
        return subjectName;
    }

    public void setSubjectName(String subjectName) {
        this.subjectName = subjectName;
    }
}
