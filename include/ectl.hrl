-define(with(Spec, CmdLine, Target, Args, Next), ectl:with(Spec, CmdLine, Args, 
        fun(Opts) -> Next(Target, Opts) end)).

-define(CONSOLE(Fmt, Arg), io:format(Fmt, Arg)).
