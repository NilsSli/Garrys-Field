function tables_exist()
    if sql.TableExists("player_info") && sql.TableExists("player_skills") then
        Msg("Both tables already exist !")
    else
        if (!sql.TableExists("player_info")) then 
            // Create table here
        end
        if (!sql.TableExists("player_skills")) then
            // Create table here
        end
    end
end