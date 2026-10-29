package DAO;

import bean.Agent;

public class AgentDAO extends DAO {
	public Agent agent(String id, String bank)
	throws Exception {
		Agent Agent = null;
		Agent = new Agent();
		Agent.setId(id);
		Agent.setBank(bank);
		return Agent;
	}
}