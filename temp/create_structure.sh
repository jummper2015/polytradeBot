cat > /tmp/create_structure.sh << 'SCRIPT_END'
#!/bin/bash
# scripts/create_structure.sh
# Ejecutar desde la raíz del proyecto:
# bash scripts/create_structure.sh

set -e  # Para si hay error

PROJECT_ROOT="POLYTRADEBOT"

echo "🚀 Creando estructura del proyecto Polymarket Bot..."

# ── Crea directorio raíz ──────────────────────────────────────────────
mkdir -p $PROJECT_ROOT
cd $PROJECT_ROOT

# ── Archivos raíz ─────────────────────────────────────────────────────
touch main.py
touch .env.example
touch .gitignore
touch docker-compose.yml
touch Dockerfile
touch pyproject.toml
touch alembic.ini
touch README.md

# ── Alembic ───────────────────────────────────────────────────────────
mkdir -p alembic/versions
touch alembic/__init__.py
touch alembic/env.py
touch alembic/script.py.mako
touch alembic/versions/.gitkeep

# ── src/ raíz ─────────────────────────────────────────────────────────
mkdir -p src
touch src/__init__.py

# ── core/ ─────────────────────────────────────────────────────────────
mkdir -p src/core
touch src/core/__init__.py
touch src/core/bootstrap.py
touch src/core/container.py
touch src/core/config.py
touch src/core/lifecycle.py

# ── domain/entities/ ──────────────────────────────────────────────────
mkdir -p src/domain/entities
touch src/domain/__init__.py
touch src/domain/entities/__init__.py
touch src/domain/entities/market.py
touch src/domain/entities/order.py
touch src/domain/entities/position.py

# ── domain/value_objects/ ─────────────────────────────────────────────
mkdir -p src/domain/value_objects
touch src/domain/value_objects/__init__.py
touch src/domain/value_objects/market_tick.py
touch src/domain/value_objects/signal.py
touch src/domain/value_objects/risk_decision.py
touch src/domain/value_objects/trade_result.py
touch src/domain/value_objects/ws_state.py

# ── domain/enums/ ─────────────────────────────────────────────────────
mkdir -p src/domain/enums
touch src/domain/enums/__init__.py
touch src/domain/enums/asset.py
touch src/domain/enums/window.py
touch src/domain/enums/signal_type.py
touch src/domain/enums/order_side.py
touch src/domain/enums/order_status.py
touch src/domain/enums/trading_mode.py

# ── application/ports/ ────────────────────────────────────────────────
mkdir -p src/application/ports
touch src/application/__init__.py
touch src/application/ports/__init__.py
touch src/application/ports/market_data_port.py
touch src/application/ports/execution_port.py
touch src/application/ports/repository_port.py
touch src/application/ports/notification_port.py

# ── application/services/ ─────────────────────────────────────────────
mkdir -p src/application/services
touch src/application/services/__init__.py
touch src/application/services/trading_service.py
touch src/application/services/market_service.py
touch src/application/services/portfolio_service.py

# ── application/dto/ ──────────────────────────────────────────────────
mkdir -p src/application/dto
touch src/application/dto/__init__.py
touch src/application/dto/market_dto.py
touch src/application/dto/order_dto.py
touch src/application/dto/portfolio_dto.py

# ── strategies/buy_above_threshold/ ───────────────────────────────────
mkdir -p src/strategies/buy_above_threshold
touch src/strategies/__init__.py
touch src/strategies/base.py
touch src/strategies/engine.py
touch src/strategies/buy_above_threshold/__init__.py
touch src/strategies/buy_above_threshold/strategy.py
touch src/strategies/buy_above_threshold/config.py

# ── strategies/filters/ ───────────────────────────────────────────────
mkdir -p src/strategies/filters
touch src/strategies/filters/__init__.py
touch src/strategies/filters/base.py
touch src/strategies/filters/spread_filter.py
touch src/strategies/filters/liquidity_filter.py
touch src/strategies/filters/time_filter.py
touch src/strategies/filters/tick_confirmation.py

# ── risk/rules/ ───────────────────────────────────────────────────────
mkdir -p src/risk/rules
touch src/risk/__init__.py
touch src/risk/engine.py
touch src/risk/base.py
touch src/risk/context.py
touch src/risk/rules/__init__.py
touch src/risk/rules/min_balance.py
touch src/risk/rules/drawdown.py
touch src/risk/rules/max_exposure.py
touch src/risk/rules/max_positions.py
touch src/risk/rules/hedge.py

# ── execution/ ────────────────────────────────────────────────────────
mkdir -p src/execution
touch src/execution/__init__.py
touch src/execution/base.py
touch src/execution/paper_handler.py
touch src/execution/real_handler.py

# ── infrastructure/polymarket/ ────────────────────────────────────────
mkdir -p src/infrastructure/polymarket
touch src/infrastructure/__init__.py
touch src/infrastructure/polymarket/__init__.py
touch src/infrastructure/polymarket/http_client.py
touch src/infrastructure/polymarket/ws_client.py
touch src/infrastructure/polymarket/adapters.py
touch src/infrastructure/polymarket/clob_client.py

# ── infrastructure/db/ ────────────────────────────────────────────────
mkdir -p src/infrastructure/db
touch src/infrastructure/db/__init__.py
touch src/infrastructure/db/models.py
touch src/infrastructure/db/repository.py
touch src/infrastructure/db/session.py

# ── infrastructure/cache/ ─────────────────────────────────────────────
mkdir -p src/infrastructure/cache
touch src/infrastructure/cache/__init__.py
touch src/infrastructure/cache/redis_client.py

# ── infrastructure/security/ ──────────────────────────────────────────
mkdir -p src/infrastructure/security
touch src/infrastructure/security/__init__.py
touch src/infrastructure/security/key_manager.py
touch src/infrastructure/security/audit_log.py
touch src/infrastructure/security/rate_limiter.py
touch src/infrastructure/security/security_guard.py
touch src/infrastructure/security/secure_config.py
touch src/infrastructure/security/log_sanitizer.py

# ── infrastructure/observability/ ─────────────────────────────────────
mkdir -p src/infrastructure/observability
touch src/infrastructure/observability/__init__.py
touch src/infrastructure/observability/logging.py
touch src/infrastructure/observability/metrics.py

# ── interfaces/api/routers/ ───────────────────────────────────────────
mkdir -p src/interfaces/api/routers
touch src/interfaces/__init__.py
touch src/interfaces/api/__init__.py
touch src/interfaces/api/app.py
touch src/interfaces/api/middleware.py
touch src/interfaces/api/routers/__init__.py
touch src/interfaces/api/routers/health.py
touch src/interfaces/api/routers/metrics.py
touch src/interfaces/api/routers/markets.py
touch src/interfaces/api/routers/positions.py
touch src/interfaces/api/routers/orders.py
touch src/interfaces/api/routers/dashboard.py

# ── interfaces/api/schemas/ ───────────────────────────────────────────
mkdir -p src/interfaces/api/schemas
touch src/interfaces/api/schemas/__init__.py
touch src/interfaces/api/schemas/market_schema.py
touch src/interfaces/api/schemas/position_schema.py
touch src/interfaces/api/schemas/order_schema.py
touch src/interfaces/api/schemas/health_schema.py

# ── interfaces/api/static/ ────────────────────────────────────────────
mkdir -p src/interfaces/api/static/css
mkdir -p src/interfaces/api/static/js
touch src/interfaces/api/static/index.html
touch src/interfaces/api/static/css/dashboard.css
touch src/interfaces/api/static/js/dashboard.js

# ── interfaces/telegram/handlers/ ────────────────────────────────────
mkdir -p src/interfaces/telegram/handlers
touch src/interfaces/telegram/__init__.py
touch src/interfaces/telegram/bot.py
touch src/interfaces/telegram/middleware.py
touch src/interfaces/telegram/handlers/__init__.py
touch src/interfaces/telegram/handlers/start.py
touch src/interfaces/telegram/handlers/status.py
touch src/interfaces/telegram/handlers/positions.py
touch src/interfaces/telegram/handlers/settings.py
touch src/interfaces/telegram/handlers/alerts.py

# ── backtesting/ ──────────────────────────────────────────────────────
mkdir -p src/backtesting/results
touch src/backtesting/__init__.py
touch src/backtesting/cli.py
touch src/backtesting/engine.py
touch src/backtesting/data_loader.py
touch src/backtesting/metrics.py
touch src/backtesting/reporter.py
touch src/backtesting/results/.gitkeep

# ── tests/ ────────────────────────────────────────────────────────────
mkdir -p tests/unit
mkdir -p tests/integration
mkdir -p tests/e2e
touch tests/__init__.py
touch tests/unit/__init__.py
touch tests/unit/test_strategy.py
touch tests/unit/test_risk.py
touch tests/unit/test_filters.py
touch tests/unit/test_domain.py
touch tests/integration/__init__.py
touch tests/integration/test_paper_trading.py
touch tests/integration/test_market_service.py
touch tests/e2e/__init__.py
touch tests/e2e/test_full_cycle.py

# ── scripts/ ──────────────────────────────────────────────────────────
mkdir -p scripts
touch scripts/check_env.py
touch scripts/seed_db.py
touch scripts/backup_db.sh

# ── data/historical/ ──────────────────────────────────────────────────
mkdir -p data/historical
touch data/historical/.gitkeep

# ── monitoring/ ───────────────────────────────────────────────────────
mkdir -p monitoring/grafana/dashboards
mkdir -p monitoring/grafana/datasources
touch monitoring/prometheus.yml
touch monitoring/alerts.yml
touch monitoring/grafana/dashboards/trading_dashboard.json
touch monitoring/grafana/datasources/prometheus.yml

echo ""
echo "✅ Estructura creada exitosamente en ./$PROJECT_ROOT"
echo ""
echo "Archivos creados:"
find . -type f | sort | grep -v "__pycache__" | grep -v ".git"
SCRIPT_END