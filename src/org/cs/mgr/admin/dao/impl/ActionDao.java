package org.cs.mgr.admin.dao.impl;

import org.cs.core.dao.impl.BaseDao;
import org.cs.mgr.admin.dao.IActionDao;
import org.cs.mgr.admin.model.Action;
import org.springframework.stereotype.Repository;

@Repository
public class ActionDao extends BaseDao<Action> implements IActionDao{

}
