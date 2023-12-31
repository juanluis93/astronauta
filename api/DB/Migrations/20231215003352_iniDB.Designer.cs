﻿// <auto-generated />
using System;
using DB;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;

#nullable disable

namespace DB.Migrations
{
    [DbContext(typeof(Nasacontext))]
    [Migration("20231215003352_iniDB")]
    partial class iniDB
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "6.0.5")
                .HasAnnotation("Relational:MaxIdentifierLength", 128);

            SqlServerModelBuilderExtensions.UseIdentityColumns(modelBuilder, 1L, 1);

            modelBuilder.Entity("DB.astronautas", b =>
                {
                    b.Property<int>("id_n")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("id_n"), 1L, 1);

                    b.Property<string>("Estado")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("descripcion")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int?>("edad")
                        .HasColumnType("int");

                    b.Property<DateTime?>("fecha_nacimiento")
                        .HasColumnType("datetime2");

                    b.Property<string>("nacionalidad")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("nombre")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("redes_sociales")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("id_n");

                    b.ToTable("astronautas", (string)null);
                });

            modelBuilder.Entity("DB.Misiones", b =>
                {
                    b.Property<int?>("id_mision")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int?>("id_mision"), 1L, 1);

                    b.Property<DateTime?>("fecha_iniciada")
                        .HasColumnType("datetime2");

                    b.Property<DateTime?>("fecha_terminada")
                        .HasColumnType("datetime2");

                    b.Property<int>("id_n")
                        .HasColumnType("int");

                    b.Property<string>("nombre")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("objetivo")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("id_mision");

                    b.HasIndex("id_n");

                    b.ToTable("Misiones", (string)null);
                });

            modelBuilder.Entity("DB.Misiones", b =>
                {
                    b.HasOne("DB.astronautas", "Astronauta")
                        .WithMany()
                        .HasForeignKey("id_n")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Astronauta");
                });
#pragma warning restore 612, 618
        }
    }
}
