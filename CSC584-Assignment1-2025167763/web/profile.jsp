<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile Result</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        body { background-color: #e9ecef; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; }
        .profile-card { border-radius: 15px; box-shadow: 0 10px 20px rgba(0,0,0,0.1); background: white; margin-top: 50px; overflow: hidden; }
        .profile-header { background: linear-gradient(135deg, #0d6efd, #0dcaf0); color: white; padding: 40px 20px; text-align: center; }
        .profile-header h2 { font-weight: 700; letter-spacing: 1px; }
        .info-list { list-style: none; padding: 0; margin-top: 20px; }
        .info-list li { padding: 15px 0; border-bottom: 1px solid #f0f0f0; font-size: 1.1rem; }
        .info-list li:last-child { border-bottom: none; }
        .info-icon { width: 35px; color: #0d6efd; text-align: center; font-size: 1.2rem; }
        .about-section { background-color: #f8f9fa; padding: 20px; border-radius: 10px; border-left: 5px solid #0d6efd; margin-top: 20px; }
    </style>
</head>
<body>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8 col-lg-6">
                <div class="profile-card">
                    <!-- Dynamic Header -->
                    <div class="profile-header">
                        <i class="fas fa-user-circle fa-6x mb-3 shadow-sm rounded-circle"></i>
                        <h2>${userName}</h2>
                        <h5 class="mb-0 text-light"><i class="fas fa-graduation-cap"></i> ${userProgram}</h5>
                    </div>
                    
                    <div class="p-4">
                        <!-- Self Introduction -->
                        <h5 class="fw-bold"><i class="fas fa-quote-left text-muted"></i> About Me</h5>
                        <div class="about-section">
                            <p class="mb-0 fst-italic text-secondary">${userIntro}</p>
                        </div>

                        <!-- Details List -->
                        <h5 class="fw-bold mt-4">Profile Details</h5>
                        <ul class="info-list">
                            <li>
                                <strong><i class="fas fa-id-badge info-icon"></i> Student ID:</strong> 
                                <span class="float-end text-muted">${userId}</span>
                            </li>
                            <li>
                                <strong><i class="fas fa-envelope info-icon"></i> Email:</strong> 
                                <span class="float-end text-muted">${userEmail}</span>
                            </li>
                            <li>
                                <strong><i class="fas fa-star info-icon"></i> Hobbies:</strong> 
                                <span class="float-end text-muted">${userHobbies}</span>
                            </li>
                        </ul>
                        
                        <div class="text-center mt-5 mb-2">
                            <a href="index.html" class="btn btn-outline-primary btn-lg rounded-pill px-4">
                                <i class="fas fa-arrow-left"></i> Create Another Profile
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>