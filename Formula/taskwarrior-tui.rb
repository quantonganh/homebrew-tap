# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TaskwarriorTui < Formula
  desc "A terminal UI for Taskwarrior, written in Go with the tview library."
  homepage "https://github.com/quantonganh/taskwarrior-tui"
  version "0.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/quantonganh/taskwarrior-tui/releases/download/v0.0.2/taskwarrior-tui_Darwin_x86_64.tar.gz"
      sha256 "2008d9cf2bc31dbafdcbd70d18fc5ea8f5cd706af122ffd45e07d3c8273963ce"

      def install
        bin.install "taskwarrior-tui"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/quantonganh/taskwarrior-tui/releases/download/v0.0.2/taskwarrior-tui_Darwin_arm64.tar.gz"
      sha256 "ad2811c80ae69f5d18b12da87629543f4fdd91e57c3974060cbab66db6fd65b4"

      def install
        bin.install "taskwarrior-tui"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/quantonganh/taskwarrior-tui/releases/download/v0.0.2/taskwarrior-tui_Linux_arm64.tar.gz"
      sha256 "d5de0406c556f89cd91a7dc6caf05ac4a9ef3ee292df482f417cc69a0b242237"

      def install
        bin.install "taskwarrior-tui"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/quantonganh/taskwarrior-tui/releases/download/v0.0.2/taskwarrior-tui_Linux_x86_64.tar.gz"
      sha256 "ea7143000a252f50a42e8a370c0b297c392190bd1937d2e5e699fe070510a7f1"

      def install
        bin.install "taskwarrior-tui"
      end
    end
  end
end