﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
using SkillTreeRazorPageBlogSample.Models;
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;
using SkillTreeRazorPageBlogSample.Models;

namespace SkillTreeRazorPageBlogSample.Data
{
    public partial class RazorpageblogContext : DbContext
    {
        public RazorpageblogContext()
        {
        }

        public RazorpageblogContext(DbContextOptions<RazorpageblogContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Article> Articles { get; set; }
        public virtual DbSet<TagCloud> TagClouds { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Article>(entity =>
            {
                entity.Property(e => e.Id).ValueGeneratedNever();

                entity.Property(e => e.Body).IsRequired();

                entity.Property(e => e.CoverPhoto)
                    .IsRequired()
                    .HasMaxLength(250);

                entity.Property(e => e.CreateDate).HasColumnType("datetime");

                entity.Property(e => e.Title)
                    .IsRequired()
                    .HasMaxLength(100);
            });

            modelBuilder.Entity<TagCloud>(entity =>
            {
                entity.ToTable("TagCloud");

                entity.Property(e => e.Id).ValueGeneratedNever();

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasMaxLength(100);
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}