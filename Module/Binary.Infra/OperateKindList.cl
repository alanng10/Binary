class OperateKindList : Any
{
    maide prusate Bool Init()
    {
        base.Init();
        this.InitArray();
        this.Count : this.Array.Count;
        this.Index : 0;

        this.Refer : this.AddItem();
        this.ReferData : this.AddItem();
        this.Return : this.AddItem();
        this.Inf : this.AddItem();
        this.While : this.AddItem();
        this.Gone : this.AddItem();
        this.Label : this.AddItem();
        this.BlockStart : this.AddItem();
        this.BlockEnd : this.AddItem();
        this.Call : this.AddItem();
        this.IntValue : this.AddItem();
        this.Var : this.AddItem();
        this.IntMemory : this.AddItem();
        this.MidMemory : this.AddItem();
        this.ShortMemory : this.AddItem();
        this.ByteMemory : this.AddItem();
        this.VarMark : this.AddItem();
        this.IntMark : this.AddItem();
        this.MidMark : this.AddItem();
        this.ShortMark : this.AddItem();
        this.ByteMark : this.AddItem();
        this.RefVar : this.AddItem();
        this.RefMaide : this.AddItem();
        this.Same : this.AddItem();
        this.Less : this.AddItem();
        this.And : this.AddItem();
        this.Orn : this.AddItem();
        this.Not : this.AddItem();
        this.Add : this.AddItem();
        this.Sub : this.AddItem();
        this.Mul : this.AddItem();
        this.Div : this.AddItem();
        this.SignLess : this.AddItem();
        this.SignMul : this.AddItem();
        this.SignDiv : this.AddItem();
        this.BitLite : this.AddItem();
        this.BitRite : this.AddItem();
        this.BitSignRite : this.AddItem();
        return true;
    }

    field prusate OperateKind Refer { get { return data; } set { data : value; } }
    field prusate OperateKind ReferData { get { return data; } set { data : value; } }
    field prusate OperateKind Return { get { return data; } set { data : value; } }
    field prusate OperateKind Inf { get { return data; } set { data : value; } }
    field prusate OperateKind While { get { return data; } set { data : value; } }
    field prusate OperateKind Gone { get { return data; } set { data : value; } }
    field prusate OperateKind Label { get { return data; } set { data : value; } }
    field prusate OperateKind BlockStart { get { return data; } set { data : value; } }
    field prusate OperateKind BlockEnd { get { return data; } set { data : value; } }
    field prusate OperateKind Call { get { return data; } set { data : value; } }
    field prusate OperateKind IntValue { get { return data; } set { data : value; } }
    field prusate OperateKind Var { get { return data; } set { data : value; } }
    field prusate OperateKind IntMemory { get { return data; } set { data : value; } }
    field prusate OperateKind MidMemory { get { return data; } set { data : value; } }
    field prusate OperateKind ShortMemory { get { return data; } set { data : value; } }
    field prusate OperateKind ByteMemory { get { return data; } set { data : value; } }
    field prusate OperateKind VarMark { get { return data; } set { data : value; } }
    field prusate OperateKind IntMark { get { return data; } set { data : value; } }
    field prusate OperateKind MidMark { get { return data; } set { data : value; } }
    field prusate OperateKind ShortMark { get { return data; } set { data : value; } }
    field prusate OperateKind ByteMark { get { return data; } set { data : value; } }
    field prusate OperateKind RefVar { get { return data; } set { data : value; } }
    field prusate OperateKind RefMaide { get { return data; } set { data : value; } }
    field prusate OperateKind Same { get { return data; } set { data : value; } }
    field prusate OperateKind Less { get { return data; } set { data : value; } }
    field prusate OperateKind And { get { return data; } set { data : value; } }
    field prusate OperateKind Orn { get { return data; } set { data : value; } }
    field prusate OperateKind Not { get { return data; } set { data : value; } }
    field prusate OperateKind Add { get { return data; } set { data : value; } }
    field prusate OperateKind Sub { get { return data; } set { data : value; } }
    field prusate OperateKind Mul { get { return data; } set { data : value; } }
    field prusate OperateKind Div { get { return data; } set { data : value; } }
    field prusate OperateKind SignLess { get { return data; } set { data : value; } }
    field prusate OperateKind SignMul { get { return data; } set { data : value; } }
    field prusate OperateKind SignDiv { get { return data; } set { data : value; } }
    field prusate OperateKind BitLite { get { return data; } set { data : value; } }
    field prusate OperateKind BitRite { get { return data; } set { data : value; } }
    field prusate OperateKind BitSignRite { get { return data; } set { data : value; } }

    maide precate OperateKind AddItem()
    {
        var OperateKind item;
        item : new OperateKind;
        item.Init();
        item.Index : this.Index;
        this.Array.Set(item.Index, item);
        this.Index : this.Index + 1;
        return item;
    }

    maide precate Bool InitArray()
    {
        this.Array : new Array;
        this.Array.Count : this.ArrayCount;
        this.Array.Init();
        return true;
    }

    field precate Array Array { get { return data; } set { data : value; } }

    field precate Int ArrayCount { get { return 38; } set { } }

    field prusate Int Count { get { return data; } set { data : value; } }

    field precate Int Index { get { return data; } set { data : value; } }

    maide prusate OperateKind Get(var Int index)
    {
        return cast OperateKind(this.Array.Get(index));
    }
}