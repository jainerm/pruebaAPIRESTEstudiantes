using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Common.API_RestEstudiantes.Models;
using WebApplication2.Data;

namespace WebApplication2.Common.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class EntidadEstudiantesController : ControllerBase
    {
        private readonly WebApplication2Context _context;

        public EntidadEstudiantesController(WebApplication2Context context)
        {
            _context = context;
        }

        // GET: api/EntidadEstudiantes
        [HttpGet]
        public async Task<ActionResult<IEnumerable<EntidadEstudiantes>>> GetEntidadEstudiantes()
        {
            return await _context.EntidadEstudiantes.ToListAsync();
        }

        // GET: api/EntidadEstudiantes/1
        [HttpGet("{id}")]
        public async Task<ActionResult<EntidadEstudiantes>> GetEntidadEstudiantes(int id)
        {
            var entidadEstudiantes = await _context.EntidadEstudiantes.FindAsync(id);

            if (entidadEstudiantes == null)
            {
                return NotFound();
            }

            return entidadEstudiantes;
        }

        // PUT: api/EntidadEstudiantes/1
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPut("{id}")]
        public async Task<IActionResult> PutEntidadEstudiantes(int id, EntidadEstudiantes entidadEstudiantes)
        {
            if (id != entidadEstudiantes.Id)
            {
                return BadRequest();
            }

            _context.Entry(entidadEstudiantes).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!EntidadEstudiantesExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }

        // POST: api/EntidadEstudiantes
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPost]
        public async Task<ActionResult<EntidadEstudiantes>> PostEntidadEstudiantes(EntidadEstudiantes entidadEstudiantes)
        {
            _context.EntidadEstudiantes.Add(entidadEstudiantes);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetEntidadEstudiantes", new { id = entidadEstudiantes.Id }, entidadEstudiantes);
        }

        // DELETE: api/EntidadEstudiantes/1
        [HttpDelete("{id}")]
        public async Task<ActionResult<EntidadEstudiantes>> DeleteEntidadEstudiantes(int id)
        {
            var entidadEstudiantes = await _context.EntidadEstudiantes.FindAsync(id);
            if (entidadEstudiantes == null)
            {
                return NotFound();
            }

            _context.EntidadEstudiantes.Remove(entidadEstudiantes);
            await _context.SaveChangesAsync();

            return entidadEstudiantes;
        }

        private bool EntidadEstudiantesExists(int id)
        {
            return _context.EntidadEstudiantes.Any(e => e.Id == id);
        }
    }
}
