/**
 * Tencent is pleased to support the open source community by making Tars available.
 *
 * Copyright (C) 2016 THL A29 Limited, a Tencent company. All rights reserved.
 *
 * Licensed under the BSD 3-Clause License (the "License"); you may not use this file except
 * in compliance with the License. You may obtain a copy of the License at
 *
 * https://opensource.org/licenses/BSD-3-Clause
 *
 * Unless required by applicable law or agreed to in writing, software distributed
 * under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
 * CONDITIONS OF ANY KIND, either express or implied. See the License for the
 * specific language governing permissions and limitations under the License.
 */
// **********************************************************************
// This file was generated by a TARS parser!
// TARS version 1.0.1.
// **********************************************************************

package com.qq.tars.support.query.prx;

import com.qq.tars.protocol.util.*;
import com.qq.tars.protocol.annotation.*;
import com.qq.tars.protocol.tars.*;
import com.qq.tars.protocol.tars.annotation.*;

/**
 * 端口信息
 */
@TarsStruct
public class EndpointF implements Comparable<EndpointF> {

	@TarsStructProperty(order = 0, isRequire = true)
	public String host = "";
	@TarsStructProperty(order = 1, isRequire = true)
	public int port = 0;
	@TarsStructProperty(order = 2, isRequire = true)
	public int timeout = 0;
	@TarsStructProperty(order = 3, isRequire = true)
	public int istcp = 0;
	@TarsStructProperty(order = 4, isRequire = true)
	public int grid = 0;
	@TarsStructProperty(order = 5, isRequire = false)
	public int groupworkid = 0;
	@TarsStructProperty(order = 6, isRequire = false)
	public int grouprealid = 0;
	@TarsStructProperty(order = 7, isRequire = false)
	public String setId = "";
	@TarsStructProperty(order = 8, isRequire = false)
	public int qos = 0;
	@TarsStructProperty(order = 9, isRequire = false)
	public int bakFlag = 0;
	@TarsStructProperty(order = 11, isRequire = false)
	public int weight = 0;
	@TarsStructProperty(order = 12, isRequire = false)
	public int weightType = 0;

	public String getHost() {
		return host;
	}

	public void setHost(String host) {
		this.host = host;
	}

	public int getPort() {
		return port;
	}

	public void setPort(int port) {
		this.port = port;
	}

	public int getTimeout() {
		return timeout;
	}

	public void setTimeout(int timeout) {
		this.timeout = timeout;
	}

	public int getIstcp() {
		return istcp;
	}

	public void setIstcp(int istcp) {
		this.istcp = istcp;
	}

	public int getGrid() {
		return grid;
	}

	public void setGrid(int grid) {
		this.grid = grid;
	}

	public int getGroupworkid() {
		return groupworkid;
	}

	public void setGroupworkid(int groupworkid) {
		this.groupworkid = groupworkid;
	}

	public int getGrouprealid() {
		return grouprealid;
	}

	public void setGrouprealid(int grouprealid) {
		this.grouprealid = grouprealid;
	}

	public String getSetId() {
		return setId;
	}

	public void setSetId(String setId) {
		this.setId = setId;
	}

	public int getQos() {
		return qos;
	}

	public void setQos(int qos) {
		this.qos = qos;
	}

	public int getBakFlag() {
		return bakFlag;
	}

	public void setBakFlag(int bakFlag) {
		this.bakFlag = bakFlag;
	}

	public int getWeight() {
		return weight;
	}

	public void setWeight(int weight) {
		this.weight = weight;
	}

	public int getWeightType() {
		return weightType;
	}

	public void setWeightType(int weightType) {
		this.weightType = weightType;
	}

	public EndpointF() {
	}

	public EndpointF(String host, int port, int timeout, int istcp, int grid, int groupworkid, int grouprealid, String setId, int qos, int bakFlag, int weight, int weightType) {
		this.host = host;
		this.port = port;
		this.timeout = timeout;
		this.istcp = istcp;
		this.grid = grid;
		this.groupworkid = groupworkid;
		this.grouprealid = grouprealid;
		this.setId = setId;
		this.qos = qos;
		this.bakFlag = bakFlag;
		this.weight = weight;
		this.weightType = weightType;
	}

	@Override
	public int compareTo(EndpointF o) {
		int c = 0;
		if((c = TarsUtil.compareTo(host, o.host)) != 0 ) {
			return c;
		}
		if((c = TarsUtil.compareTo(port, o.port)) != 0 ) {
			return c;
		}
		if((c = TarsUtil.compareTo(timeout, o.timeout)) != 0 ) {
			return c;
		}
		if((c = TarsUtil.compareTo(istcp, o.istcp)) != 0 ) {
			return c;
		}
		if((c = TarsUtil.compareTo(grid, o.grid)) != 0 ) {
			return c;
		}
		if((c = TarsUtil.compareTo(qos, o.qos)) != 0 ) {
			return c;
		}
		if((c = TarsUtil.compareTo(weight, o.weight)) != 0 ) {
			return c;
		}
		if((c = TarsUtil.compareTo(weightType, o.weightType)) != 0 ) {
			return c;
		}
		return 0;
	}


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + TarsUtil.hashCode(host);
		result = prime * result + TarsUtil.hashCode(port);
		result = prime * result + TarsUtil.hashCode(timeout);
		result = prime * result + TarsUtil.hashCode(istcp);
		result = prime * result + TarsUtil.hashCode(grid);
		result = prime * result + TarsUtil.hashCode(qos);
		result = prime * result + TarsUtil.hashCode(weight);
		result = prime * result + TarsUtil.hashCode(weightType);
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj == null) {
			return false;
		}
		if (!(obj instanceof EndpointF)) {
			return false;
		}
		EndpointF other = (EndpointF) obj;
		return (
			TarsUtil.equals(host, other.host) &&
			TarsUtil.equals(port, other.port) &&
			TarsUtil.equals(timeout, other.timeout) &&
			TarsUtil.equals(istcp, other.istcp) &&
			TarsUtil.equals(grid, other.grid) &&
			TarsUtil.equals(qos, other.qos) &&
			TarsUtil.equals(weight, other.weight) &&
			TarsUtil.equals(weightType, other.weightType) 
		);
	}

	public void writeTo(TarsOutputStream _os) {
		if (null != host) {
			_os.write(host, 0);
		}
		_os.write(port, 1);
		_os.write(timeout, 2);
		_os.write(istcp, 3);
		_os.write(grid, 4);
		_os.write(groupworkid, 5);
		_os.write(grouprealid, 6);
		if (null != setId) {
			_os.write(setId, 7);
		}
		_os.write(qos, 8);
		_os.write(bakFlag, 9);
		_os.write(weight, 11);
		_os.write(weightType, 12);
	}

	public void readFrom(TarsInputStream _is) {
		this.host = _is.read(host, 0, true);
		this.port = _is.read(port, 1, true);
		this.timeout = _is.read(timeout, 2, true);
		this.istcp = _is.read(istcp, 3, true);
		this.grid = _is.read(grid, 4, true);
		this.groupworkid = _is.read(groupworkid, 5, false);
		this.grouprealid = _is.read(grouprealid, 6, false);
		this.setId = _is.read(setId, 7, false);
		this.qos = _is.read(qos, 8, false);
		this.bakFlag = _is.read(bakFlag, 9, false);
		this.weight = _is.read(weight, 11, false);
		this.weightType = _is.read(weightType, 12, false);
	}

}
