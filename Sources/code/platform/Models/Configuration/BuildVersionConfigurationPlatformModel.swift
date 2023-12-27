

import Foundation


public extension PlatformClient.Configuration {
    /*
        Model: BuildVersion
        Used By: Configuration
    */

    class BuildVersion: Codable {
        
        
        public var id: String?
        
        public var application: String?
        
        public var platformType: String?
        
        public var buildStatus: String?
        
        public var versionName: String?
        
        public var versionCode: Int?
        
        public var downloadUrl: LandingImage?
        
        public var createdAt: String?
        
        public var modifiedAt: String?
        
        public var v: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case application = "application"
            
            case platformType = "platform_type"
            
            case buildStatus = "build_status"
            
            case versionName = "version_name"
            
            case versionCode = "version_code"
            
            case downloadUrl = "download_url"
            
            case createdAt = "created_at"
            
            case modifiedAt = "modified_at"
            
            case v = "__v"
            
        }

        public init(application: String? = nil, buildStatus: String? = nil, createdAt: String? = nil, downloadUrl: LandingImage? = nil, modifiedAt: String? = nil, platformType: String? = nil, versionCode: Int? = nil, versionName: String? = nil, id: String? = nil, v: Int? = nil) {
            
            self.id = id
            
            self.application = application
            
            self.platformType = platformType
            
            self.buildStatus = buildStatus
            
            self.versionName = versionName
            
            self.versionCode = versionCode
            
            self.downloadUrl = downloadUrl
            
            self.createdAt = createdAt
            
            self.modifiedAt = modifiedAt
            
            self.v = v
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    application = try container.decode(String.self, forKey: .application)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    platformType = try container.decode(String.self, forKey: .platformType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    buildStatus = try container.decode(String.self, forKey: .buildStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    versionName = try container.decode(String.self, forKey: .versionName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    versionCode = try container.decode(Int.self, forKey: .versionCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    downloadUrl = try container.decode(LandingImage.self, forKey: .downloadUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedAt = try container.decode(String.self, forKey: .modifiedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    v = try container.decode(Int.self, forKey: .v)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            
            
            
            try? container.encodeIfPresent(platformType, forKey: .platformType)
            
            
            
            
            try? container.encodeIfPresent(buildStatus, forKey: .buildStatus)
            
            
            
            
            try? container.encodeIfPresent(versionName, forKey: .versionName)
            
            
            
            
            try? container.encodeIfPresent(versionCode, forKey: .versionCode)
            
            
            
            
            try? container.encodeIfPresent(downloadUrl, forKey: .downloadUrl)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(modifiedAt, forKey: .modifiedAt)
            
            
            
            
            try? container.encodeIfPresent(v, forKey: .v)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Configuration {
    /*
        Model: BuildVersion
        Used By: Configuration
    */

    class BuildVersion: Codable {
        
        
        public var id: String?
        
        public var application: String?
        
        public var platformType: String?
        
        public var buildStatus: String?
        
        public var versionName: String?
        
        public var versionCode: Int?
        
        public var downloadUrl: LandingImage?
        
        public var createdAt: String?
        
        public var modifiedAt: String?
        
        public var v: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case application = "application"
            
            case platformType = "platform_type"
            
            case buildStatus = "build_status"
            
            case versionName = "version_name"
            
            case versionCode = "version_code"
            
            case downloadUrl = "download_url"
            
            case createdAt = "created_at"
            
            case modifiedAt = "modified_at"
            
            case v = "__v"
            
        }

        public init(application: String? = nil, buildStatus: String? = nil, createdAt: String? = nil, downloadUrl: LandingImage? = nil, modifiedAt: String? = nil, platformType: String? = nil, versionCode: Int? = nil, versionName: String? = nil, id: String? = nil, v: Int? = nil) {
            
            self.id = id
            
            self.application = application
            
            self.platformType = platformType
            
            self.buildStatus = buildStatus
            
            self.versionName = versionName
            
            self.versionCode = versionCode
            
            self.downloadUrl = downloadUrl
            
            self.createdAt = createdAt
            
            self.modifiedAt = modifiedAt
            
            self.v = v
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    application = try container.decode(String.self, forKey: .application)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    platformType = try container.decode(String.self, forKey: .platformType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    buildStatus = try container.decode(String.self, forKey: .buildStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    versionName = try container.decode(String.self, forKey: .versionName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    versionCode = try container.decode(Int.self, forKey: .versionCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    downloadUrl = try container.decode(LandingImage.self, forKey: .downloadUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedAt = try container.decode(String.self, forKey: .modifiedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    v = try container.decode(Int.self, forKey: .v)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            
            
            
            try? container.encodeIfPresent(platformType, forKey: .platformType)
            
            
            
            
            try? container.encodeIfPresent(buildStatus, forKey: .buildStatus)
            
            
            
            
            try? container.encodeIfPresent(versionName, forKey: .versionName)
            
            
            
            
            try? container.encodeIfPresent(versionCode, forKey: .versionCode)
            
            
            
            
            try? container.encodeIfPresent(downloadUrl, forKey: .downloadUrl)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(modifiedAt, forKey: .modifiedAt)
            
            
            
            
            try? container.encodeIfPresent(v, forKey: .v)
            
            
        }
        
    }
}


