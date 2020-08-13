unit uAtalhos;

interface

  uses FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.DBCtrls;

  procedure CarregaDescricao(conexao : TFDConnection; combo : TDBComboBox; campo, tabela : string);
  function PegaQry(conexao : TFDConnection; tabela, campo, id : string): real;

implementation

procedure CarregaDescricao(conexao : TFDConnection; combo : TDBComboBox; campo, tabela : string);
var
  qryItems : TFDQuery;
begin
  qryItems := TFDQuery.Create(nil);
  qryItems.Connection := conexao;
  try
    with qryItems do begin
      Close;
      SQL.Clear;
      SQL.Add('select ' + campo + ' from ' + tabela);
      Open();
    end;

    while not qryItems.Eof do begin
      combo.Items.Add(qryItems.Fields[0].AsString);
      qryItems.Next;
    end;
  finally
    qryItems.Free;
  end;
end;

//Função que retorna um valor da tabela
function PegaQry(conexao : TFDConnection; tabela, campo, id : string): real;
var
  query : tfdquery;
begin
  query := tfdquery.create(nil);
  query.connection := conexao;
  try
    with query do begin
      close;
      SQL.clear;
      sql.add('select ' + campo + ' from ' + tabela + ' where id_conf = ' + id);
      open;
      Result := fieldbyname(campo).value;
    end;
  finally
    query.free;
  end;
end;

end.
