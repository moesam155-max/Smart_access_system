CREATE TABLE security_alerts (
    id INT IDENTITY(1,1) PRIMARY KEY,

    alert_type NVARCHAR(100) NOT NULL,

    description NVARCHAR(MAX),

    severity NVARCHAR(20)
    CHECK (severity IN ('Low', 'Medium', 'High', 'Critical')),

    user_id INT NULL,

    created_at DATETIME DEFAULT GETDATE(),

    status NVARCHAR(20) DEFAULT 'Open'
    CHECK (status IN ('Open', 'Resolved')),

    FOREIGN KEY (user_id) REFERENCES users(id)
);
GO