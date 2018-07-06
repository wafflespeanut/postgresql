// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "PostgreSQL",
    products: [
        .library(name: "PostgreSQL", targets: ["PostgreSQL"]),
    ],
    dependencies: [
        // 🌎 Utility package containing tools for byte manipulation, Codable, OS APIs, and debugging.
        .package(url: "https://github.com/vapor/core.git", .exact("3.1.7")),

        // 🔑 Hashing (BCrypt, SHA, HMAC, etc), encryption, and randomness.
        .package(url: "https://github.com/vapor/crypto.git", .exact("3.1.2")),

        // 🗄 Core services for creating database integrations.
        .package(url: "https://github.com/vapor/database-kit.git", .exact("1.0.1")),

        // 📦 Dependency injection / inversion of control framework.
        .package(url: "https://github.com/vapor/service.git", .exact("1.0.0")),

        // *️⃣ Build SQL queries in Swift.
        .package(url: "https://github.com/vapor/sql.git", .exact("1.0.0")),

        // Event-driven network application framework for high performance protocol servers & clients, non-blocking.
        .package(url: "https://github.com/apple/swift-nio.git", .exact("1.7.0")),
    ],
    targets: [
        .target(name: "PostgreSQL", dependencies: ["Async", "Bits", "Core", "Crypto", "DatabaseKit", "NIO", "Service", "SQL"]),
        .testTarget(name: "PostgreSQLTests", dependencies: ["Core", "PostgreSQL"]),
    ]
)
