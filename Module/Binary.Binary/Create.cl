class Create : Any
{
    maide prusate Bool Init()
    {
        base.Init();
        this.OperateKindList : share OperateKindList;

        this.CountOperate : this.CreateCountOperate();
        this.SetOperate : this.CreateSetOperate();
        return true;
    }

    maide precate CreateCountOperate CreateCountOperate()
    {
        var CreateCountOperate a;
        a : new CreateCountOperate;
        a.Create : this;
        a.Init();
        return a;
    }

    maide precate CreateSetOperate CreateSetOperate()
    {
        var CreateSetOperate a;
        a : new CreateSetOperate;
        a.Create : this;
        a.Init();
        return a;
    }

    field prusate CreateArg Arg { get { return data; } set { data : value; } }
    field prusate CreateOperate Operate { get { return data; } set { data : value; } }
    field prusate CreateCountOperate CountOperate { get { return data; } set { data : value; } }
    field prusate CreateSetOperate SetOperate { get { return data; } set { data : value; } }
    field precate OperateKindList OperateKindList { get { return data; } set { data : value; } }

    maide prusate Bool OperateVar(var Int dest, var Int index)
    {
        this.Kind(this.OperateKindList.Var);
        this.Int(dest);
        this.Int(index);
        return true;
    }

    maide prusate Bool OperateAdd(var Int dest, var Int lite, var Int rite)
    {
        this.Kind(this.OperateKindList.Add);
        this.Int(dest);
        this.Int(lite);
        this.Int(rite);
        return true;
    }

    maide private Bool Kind(var OperateKind kind)
    {
        this.Byte(kind.Index);
        return true;
    }

    maide prusate Bool String(var Text text)
    {
    }

    maide prusate Bool Int(var Int value)
    {
        this.Operate.ExecuteInt(value);
        return true;
    }

    maide prusate Bool Byte(var Int value)
    {
        this.Operate.ExecuteByte(value);
        return true;
    }
}