﻿// **********************************************************************
// This file was generated by a TARS parser!
// TARS version 1.0.1.
// **********************************************************************

var assert     = require('assert');
var TarsStream = require('@tars/stream');
var TarsError  = require('../../../../protal.js').error;

var tars = tars || {};
module.exports.tars = tars;


tars.User_t = function() {
    this.id = 0;
    this.score = 0;
    this.name = "";
    this._classname = "tars.User_t";
};
tars.User_t._classname = "tars.User_t";

tars.User_t._write = function (os, tag, value) { os.writeStruct(tag, value); }
tars.User_t._read  = function (is, tag, def) { return is.readStruct(tag, true, def); }
tars.User_t._readFrom = function (is) {
    var tmp = new tars.User_t();
    tmp.id = is.readInt32(0, false, 0);
    tmp.score = is.readInt32(1, false, 0);
    tmp.name = is.readString(2, false, "");
    return tmp;
};
tars.User_t.prototype._writeTo = function (os) {
    os.writeInt32(0, this.id);
    os.writeInt32(1, this.score);
    os.writeString(2, this.name);
};
tars.User_t.prototype._equal = function (anItem) {
    assert(false, 'this structure not define key operation');
}
tars.User_t.prototype._genKey = function () {
    if (!this._proto_struct_name_) {
        this._proto_struct_name_ = 'STRUCT' + Math.random();
    }
    return this._proto_struct_name_;
}
tars.User_t.prototype.toObject = function() { 
    var tmp = {};

    tmp.id = this.id;
    tmp.score = this.score;
    tmp.name = this.name;
    
    return tmp;
}
tars.User_t.prototype.readFromObject = function(json) { 
    !json.hasOwnProperty("id") || (this.id = json.id);
    !json.hasOwnProperty("score") || (this.score = json.score);
    !json.hasOwnProperty("name") || (this.name = json.name);
}
tars.User_t.prototype.toBinBuffer = function () {
    var os = new TarsStream.OutputStream();
    this._writeTo(os);
    return os.getBinBuffer();
}
tars.User_t.new = function () {
    return new tars.User_t();
}
tars.User_t.create = function (is) {
    return tars.User_t._readFrom(is);
}

tars.Result_t = function() {
    this.id = 0;
    this.iLevel = 0;
    this._classname = "tars.Result_t";
};
tars.Result_t._classname = "tars.Result_t";

tars.Result_t._write = function (os, tag, value) { os.writeStruct(tag, value); }
tars.Result_t._read  = function (is, tag, def) { return is.readStruct(tag, true, def); }
tars.Result_t._readFrom = function (is) {
    var tmp = new tars.Result_t();
    tmp.id = is.readInt32(0, false, 0);
    tmp.iLevel = is.readInt32(1, false, 0);
    return tmp;
};
tars.Result_t.prototype._writeTo = function (os) {
    os.writeInt32(0, this.id);
    os.writeInt32(1, this.iLevel);
};
tars.Result_t.prototype._equal = function (anItem) {
    assert(false, 'this structure not define key operation');
}
tars.Result_t.prototype._genKey = function () {
    if (!this._proto_struct_name_) {
        this._proto_struct_name_ = 'STRUCT' + Math.random();
    }
    return this._proto_struct_name_;
}
tars.Result_t.prototype.toObject = function() { 
    var tmp = {};

    tmp.id = this.id;
    tmp.iLevel = this.iLevel;
    
    return tmp;
}
tars.Result_t.prototype.readFromObject = function(json) { 
    !json.hasOwnProperty("id") || (this.id = json.id);
    !json.hasOwnProperty("iLevel") || (this.iLevel = json.iLevel);
}
tars.Result_t.prototype.toBinBuffer = function () {
    var os = new TarsStream.OutputStream();
    this._writeTo(os);
    return os.getBinBuffer();
}
tars.Result_t.new = function () {
    return new tars.Result_t();
}
tars.Result_t.create = function (is) {
    return tars.Result_t._readFrom(is);
}

tars.NodeTarsImp = function () { 
    this._name   = undefined;
    this._worker = undefined;
}

tars.NodeTarsImp.prototype.initialize = function () { 
    //TODO:
}

tars.NodeTarsImp.prototype.onDispatch = function (current, FuncName, BinBuffer) { 
    switch (FuncName) {
        case 'tars_ping': {
                current.sendResponse = function (_ret) {
                        if (current.getRequestVersion() === TarsStream.Tup.TUP_SIMPLE || current.getRequestVersion() === TarsStream.Tup.TUP_COMPLEX){
                                var tup = new TarsStream.UniAttribute();
                                tup.tupVersion = current.getRequestVersion();
                                tup.writeInt32("", _ret);
                                current.doResponse(tup.encode());
                        }else{
                                var os = new TarsStream.OutputStream();
                                os.writeInt32(0, _ret);
                                current.doResponse(os.getBinBuffer());
                        }
                }
                        current.sendResponse(0);
                return TarsError.SUCCESS;
        }
        case 'test' : {
            current.sendResponse = function (_ret) {
                if (current.getRequestVersion() === TarsStream.Tup.TUP_SIMPLE || current.getRequestVersion() === TarsStream.Tup.TUP_COMPLEX) {
                    var tup = new TarsStream.UniAttribute();
                    tup.tupVersion = current.getRequestVersion();
                    tup.writeInt32("", _ret);

                    current.doResponse(tup.encode());
                } else {
                    var os = new TarsStream.OutputStream();
                    os.writeInt32(0, _ret);

                    current.doResponse(os.getBinBuffer());
                }
            }

            this.test(current);

            return TarsError.SUCCESS;
        }
        case 'getall' : {
            if (current.getRequestVersion() === TarsStream.Tup.TUP_SIMPLE || current.getRequestVersion() === TarsStream.Tup.TUP_COMPLEX) {
                var tup = new TarsStream.UniAttribute();
                tup.tupVersion = current.getRequestVersion();
                tup.decode(BinBuffer);
                var stUser = tup.readStruct("stUser", tars.User_t);
                var stResult = tup.readStruct("stResult", tars.Result_t, new tars.Result_t());
            } else {
                var is = new TarsStream.InputStream(BinBuffer);
                var stUser = is.readStruct(1, true, tars.User_t);
                var stResult = is.readStruct(2, false, tars.Result_t);
            }
            current.sendResponse = function (_ret, stResult) {
                if (current.getRequestVersion() === TarsStream.Tup.TUP_SIMPLE || current.getRequestVersion() === TarsStream.Tup.TUP_COMPLEX) {
                    var tup = new TarsStream.UniAttribute();
                    tup.tupVersion = current.getRequestVersion();
                    tup.writeInt32("", _ret);
                    tup.writeStruct("stResult", stResult);

                    current.doResponse(tup.encode());
                } else {
                    var os = new TarsStream.OutputStream();
                    os.writeInt32(0, _ret);
                    os.writeStruct(2, stResult);

                    current.doResponse(os.getBinBuffer());
                }
            }

            this.getall(current, stUser, stResult);

            return TarsError.SUCCESS;
        }
        case 'getUsrName' : {
            if (current.getRequestVersion() === TarsStream.Tup.TUP_SIMPLE || current.getRequestVersion() === TarsStream.Tup.TUP_COMPLEX) {
                var tup = new TarsStream.UniAttribute();
                tup.tupVersion = current.getRequestVersion();
                tup.decode(BinBuffer);
                var sUsrName = tup.readString("sUsrName");
                var sValue1 = tup.readString("sValue1", "");
                var sValue2 = tup.readString("sValue2", "");
            } else {
                var is = new TarsStream.InputStream(BinBuffer);
                var sUsrName = is.readString(1, true);
                var sValue1 = is.readString(2, false);
                var sValue2 = is.readString(3, false);
            }
            current.sendResponse = function (_ret, sValue1, sValue2) {
                if (current.getRequestVersion() === TarsStream.Tup.TUP_SIMPLE || current.getRequestVersion() === TarsStream.Tup.TUP_COMPLEX) {
                    var tup = new TarsStream.UniAttribute();
                    tup.tupVersion = current.getRequestVersion();
                    tup.writeInt32("", _ret);
                    tup.writeString("sValue1", sValue1);
                    tup.writeString("sValue2", sValue2);

                    current.doResponse(tup.encode());
                } else {
                    var os = new TarsStream.OutputStream();
                    os.writeInt32(0, _ret);
                    os.writeString(2, sValue1);
                    os.writeString(3, sValue2);

                    current.doResponse(os.getBinBuffer());
                }
            }

            this.getUsrName(current, sUsrName, sValue1, sValue2);

            return TarsError.SUCCESS;
        }
    }
    return TarsError.SERVER.FUNC_NOT_FOUND;
}

tars.NodeTarsImp.prototype.test = function (current) {
    //TODO:
    assert.fail('test function not implemented');
}

tars.NodeTarsImp.prototype.getall = function (current, stUser, stResult) {
    //TODO:
    assert.fail('getall function not implemented');
}

tars.NodeTarsImp.prototype.getUsrName = function (current, sUsrName, sValue1, sValue2) {
    //TODO:
    assert.fail('getUsrName function not implemented');
}





