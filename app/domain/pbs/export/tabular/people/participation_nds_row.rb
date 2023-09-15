# frozen_string_literal: true

# Copyright (c) 2012-2022, Pfadibewegung Schweiz. This file is part of
# hitobito_pbs and licensed under the Affero General Public License version 3
# or later. See the COPYING file at the top-level directory or at
# https://github.com/hitobito/hitobito_pbs.

module Pbs::Export::Tabular::People::ParticipationNdsRow
  extend ActiveSupport::Concern

  included do
    alias_method_chain :first_language, :language
  end

  # TBD: move to youth wagon? https://github.com/hitobito/hitobito_youth/blob/3322054e2d64db19f8b049773e61f68e7f614546/app/domain/export/tabular/people/participation_nds_row.rb#L70
  def first_language_with_language
    entry.language.presence&.upcase || 'DE'
  end
end
