
{****************************************************************************
 *  Funcoes de Textos
 *  AdaptaÁ„o e Acrescimo de funcÁıes por Gilson Santiago
 *  Atualizada em Data:  29 de setembro de 2018
 ********************************************************}


unit textos;

interface
uses sysutils;

function Justifica(mCad:string;mMAx:integer):string;
function Alltrim(const Search: string): string;
function RemoveAcentos(Str:String): String;
function RemoveChar(Const Texto:String):String;
function TiraPontoeVirgula(sTexto:String):String;
function RemoveZeros(S: string): string;


implementation

{****************************************************************************
 *  Funcoes de Textos
 *  AdaptaÁ„o e Acrescimo de funcÁıes por Gilson Santiago
 *  Atualizada em Data:  29 de setembro de 2018
 ********************************************************}

function Justifica(mCad:string;mMAx:integer):string;
var
mPos,mPont,mTam,mNr,mCont:integer;
mStr:string;
begin
   mTam:=Length(mCad);
  
  if mTam>=mMax then
  
     Result:=copy(mCad,1,mMax)
	 
    else
	
     mStr:='';
     mCont:=0;
     mPont:=1;
     mNr:=mMax-mTam;
	 
     while mCont<mNr do
	 
       begin
	   
         mPos:=pos(mStr,copy(mCad,mPont,100));
		 
         if mPos=0 then
		 
          begin
		  
           mStr:=mStr+' ';
		   
           mPont:=1;
		   
           continue;
		   
          end
		  
         else
		 
          begin
		  
           mCont:=mCont+1;
		   
           Insert(' ',mCad,mPos+mPont);
		   
           mPont:=mPont+mPos+length(mStr);
		   
          end;
		  
        Result:=mCad;
		
      end;
	  
     end;


    // EX.:
    // Memo1.lines[i]:=(justifica(memo1.lines[i]{String},60 {N∫ de caracteres possiveis da linha});

{****************************************************************************
 *  Funcoes de Textos
 *  AdaptaÁ„o e Acrescimo de funcÁıes por Gilson Santiago
 *  Atualizada em Data:  29 de setembro de 2018
 ********************************************************}

function Alltrim(const Search: string): string;
const
  BlackSpace = [#33..#126];
var
  Index: byte;
begin
	Index:=1;
	
	while (Index <= Length(Search)) and not (Search[Index] in BlackSpace) do 
	
	begin
		Index:=Index + 1;
		   
	end;
		
	Result:=Copy(Search, Index, 255);
	
	Index := Length(Result);
		
	while (Index > 0) and not (Result[Index] in BlackSpace) do 
		
	begin
		
		Index:=Index - 1;
		   
	end;
		
	Result := Copy(Result, 1, Index);
	
end;

{****************************************************************************
 *  Funcoes de Textos
 *  AdaptaÁ„o e Acrescimo de funcÁıes por Gilson Santiago
 *  Atualizada em Data:  29 de setembro de 2018
 ********************************************************}


function RemoveAcentos(Str:String): String;
{Remove caracteres acentuados de uma string}
Const ComAcento = '‡‚ÍÙ˚„ı·ÈÌÛ˙Á¸¿¬ ‘€√’¡…Õ”⁄«‹';
	SemAcento = 'aaeouaoaeioucuAAEOUAOAEIOUCU';
Var
	x : Integer;
Begin

	For x := 1 to Length(Str) do
	
	Begin
	
		if Pos(Str[x],ComAcento)<>0 Then
		
		begin
		
			Str[x] := SemAcento[Pos(Str[x],ComAcento)];
			
		end;
		
	end;
	
	Result := Str;
	
end;

{****************************************************************************
 *  Funcoes de Textos
 *  AdaptaÁ„o e Acrescimo de funcÁıes por Gilson Santiago
 *  Atualizada em Data:  29 de setembro de 2018
 ********************************************************}

function RemoveChar(Const Texto:String):String;
//
// Remove caracteres de uma string deixando apenas numeros
// 
var
	I: integer; 
	S: string; 
begin
	S := ''; 
	
	for I := 1 To Length(Texto) Do 
	
	begin
	
		if (Texto[I] in ['0'..'9']) then 
		
		begin 
		
			S := S + Copy(Texto, I, 1); 
			
		end;
		
	end; 
	
	result := S;
	
end;

{****************************************************************************
 *  Funcoes de Textos
 *  AdaptaÁ„o e Acrescimo de funcÁıes por Gilson Santiago
 *  Atualizada em Data:  29 de setembro de 2018
 ********************************************************}

function TiraPontoeVirgula(sTexto:String):String;
var
	Temp_01 : string;
	Temp_03, conta: Integer;
begin
	Conta := 0;
	
	Temp_03 := length(sTexto);
	
	while conta < temp_03 do
	
	begin
	
		Conta := Conta + 1;
		
		Temp_01 := Copy(Stexto,conta,1);
		
		if Temp_01 = '.' then
		
		begin
		
			sTexto := Copy(sTexto,1,(Conta - 1))+ Copy(sTexto,(Conta + 1),(Temp_03 - Conta));
			
		end;
		
		if Temp_01 = ',' then
		
		begin
		
		sTexto := Copy(sTexto,1,(Conta - 1))+ Copy(sTexto,(Conta + 1),(Temp_03 - Conta));
		
		end;
		
	end;
	
	Result := sTexto;
	
end;

{****************************************************************************
 *  Funcoes de Textos
 *  AdaptaÁ„o e Acrescimo de funcÁıes por Gilson Santiago
 *  Atualizada em Data:  29 de setembro de 2018
 ********************************************************}


function RemoveZeros(S: string): string;
var  I, J : Integer;
begin

	I := Length(S);
	
	while (I > 0) and (S[I] <= ' ') do begin
	
		Dec(I); 
		
	end;
	
	J := 1;
	
	while (J < I) and ((S[J] <= ' ') or (S[J] = '0')) do begin
	
		Inc(J); 
		
	end;
	
	Result := Copy(S, J, (I-J) + 1);
	
end;

end.
 