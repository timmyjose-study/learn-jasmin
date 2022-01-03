{$mode objfpc}{$H+}{$J-}

program Endiannness(output);
uses SysUtils;
var
  N1: Cardinal = $aabbccdd;
  N2: Word = $aabb;

function ConvertEndianness32(const N: Cardinal): Cardinal;
begin
  Result := ((N shr 24) and $000000ff); 
  Result := Result or ((N shr 8) and $0000ff00);
  Result := Result or ((N shl 8) and $00ff0000);
  Result := Result or ((N shl 24) and $ff000000)
end;

function ConvertEndianness16(const N: Word): Word;
begin
  Result := ((N shr 8) and $00ff) or ((N shl 8) and $ff00)
end;

begin
  WriteLn(Format('Little-endian: %x, Big-endian: %x, Back again: %x', [N1, ConvertEndianness32(N1), ConvertEndianness32(ConvertEndianness32(N1))]));
  WriteLn(Format('Little-endian: %x, Big-endian: %x, Back again: %x', [N2, ConvertEndianness16(N2), ConvertEndianness16(ConvertEndianness16(N2))]))
end.