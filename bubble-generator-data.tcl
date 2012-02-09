#!/bin/wish

set all_graphs {
  signed-number {
     line
        {or nil + -}
        {or /integer-literal /floating-point-literal}
  }
  
  literal-value {
    or
     {line /integer-literal}
     {line /floating-point-literal}
     {line /string-literal}
     {line /blob-literal}
     {line NULL}
     {line CURRENT_TIME}
     {line CURRENT_DATE}
     {line CURRENT_TIMESTAMP}
  }
  
  sequence {
    line 
    {or < ( [ }
    {loop
      {or
        sequence
        selector
        {line {or nil !} decorator}
        btree
        TRUE
        FALSE
      }
      ,
    }
    {or > ) ] }
  }
}