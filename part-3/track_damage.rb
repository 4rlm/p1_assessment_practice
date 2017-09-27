module TrackDamage

  def damaged?
    @damaged
  end

  def record_damage
    @damaged = true
  end

  def repair
    @damaged = false
  end

  ###################

  def resolved?
    !!@resolved
  end

  def close
    @resolved = true
  end

  def assigned?
    !!@assigned_employee
  end

end
