namespace Z.Tool.Binary.OperateKindList;

public class Gen : SourceGen
{
    public override bool Init()
    {
        base.Init();
        this.Module = this.S("Binary.Infra");
        this.ClassName = this.S("OperateKindList");
        this.BaseClassName = this.S("Any");
        this.AnyClassName = this.S("Any");
        this.ItemClassName = this.S("OperateKind");
        this.ArrayClassName = this.S("Array");
        this.Export = true;
        this.ItemListFileName = this.S("ToolData/Binary/ItemListOperateKind.txt");
        this.AddMethodFileName = this.S("ToolData/Binary/AddMaideOperateKind.txt");
        this.OutputFilePath = this.S("../../Module/Binary.Infra/OperateKindList.cl");
        return true;
    }
}