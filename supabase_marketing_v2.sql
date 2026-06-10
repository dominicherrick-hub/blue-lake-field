-- ============================================================
-- Blue Lake KICK — Property Pulse Schema v2
-- Adds Cape Analytics-aligned fields to scan_events
-- Run in Supabase: Dashboard → SQL Editor → New Query → Run
-- Safe to run multiple times (ADD COLUMN IF NOT EXISTS)
-- ============================================================

-- Add staining detail fields to scan_events
ALTER TABLE scan_events
  ADD COLUMN IF NOT EXISTS staining_coverage_pct  text,      -- '<25%', '25-50%', '50-75%', '>75%'
  ADD COLUMN IF NOT EXISTS granule_loss            boolean,   -- true = visible granule loss (major carrier concern)
  ADD COLUMN IF NOT EXISTS debris_valleys          boolean;   -- true = debris accumulation in roof valleys

-- Verify
SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'scan_events'
  AND column_name IN ('staining_coverage_pct','granule_loss','debris_valleys')
ORDER BY column_name;
