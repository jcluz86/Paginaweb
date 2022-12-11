var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();

app.MapGet("/{nome}/{senha}",  async context =>
{
 var nome = context.Request.RouteValues["nome"];
 var senha = context.Request.RouteValues["senha"];
 await context.Response.WriteAsync($"PUC MINAS!!{nome} {senha}");
 System.Diagnostics.ProcessStartInfo process = new System.Diagnostics.ProcessStartInfo();
 process.UseShellExecute = false;
 process.WorkingDirectory = "/bin";
 process.FileName = "sh";
 process.Arguments = $"/home/julio/samba.sh {nome} {senha}";
 process.RedirectStandardOutput = true;
 System.Diagnostics.Process cmd =  System.Diagnostics.Process.Start(process);
 cmd.WaitForExit();


});

app.Run();
