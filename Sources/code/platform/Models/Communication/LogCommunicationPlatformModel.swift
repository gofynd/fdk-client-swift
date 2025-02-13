

import Foundation


public extension PlatformClient.Communication {
    /*
        Model: Log
        Used By: Communication
    */

    class Log: Codable {
        
        
        public var email: LogEmail?
        
        public var sms: LogSms?
        
        public var pushnotification: LogPushnotification?
        
        public var id: String?
        
        public var pod: String?
        
        public var service: String?
        
        public var step: String?
        
        public var source: String?
        
        public var status: String?
        
        public var expireAt: String?
        
        public var createdAt: String?
        
        public var meta: LogMeta?
        
        public var application: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case email = "email"
            
            case sms = "sms"
            
            case pushnotification = "pushnotification"
            
            case id = "_id"
            
            case pod = "pod"
            
            case service = "service"
            
            case step = "step"
            
            case source = "source"
            
            case status = "status"
            
            case expireAt = "expire_at"
            
            case createdAt = "created_at"
            
            case meta = "meta"
            
            case application = "application"
            
        }

        public init(application: String? = nil, createdAt: String? = nil, email: LogEmail? = nil, expireAt: String? = nil, meta: LogMeta? = nil, pod: String? = nil, pushnotification: LogPushnotification? = nil, service: String? = nil, sms: LogSms? = nil, source: String? = nil, status: String? = nil, step: String? = nil, id: String? = nil) {
            
            self.email = email
            
            self.sms = sms
            
            self.pushnotification = pushnotification
            
            self.id = id
            
            self.pod = pod
            
            self.service = service
            
            self.step = step
            
            self.source = source
            
            self.status = status
            
            self.expireAt = expireAt
            
            self.createdAt = createdAt
            
            self.meta = meta
            
            self.application = application
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    email = try container.decode(LogEmail.self, forKey: .email)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sms = try container.decode(LogSms.self, forKey: .sms)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pushnotification = try container.decode(LogPushnotification.self, forKey: .pushnotification)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pod = try container.decode(String.self, forKey: .pod)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    service = try container.decode(String.self, forKey: .service)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    step = try container.decode(String.self, forKey: .step)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    source = try container.decode(String.self, forKey: .source)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    expireAt = try container.decode(String.self, forKey: .expireAt)
                
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
                    meta = try container.decode(LogMeta.self, forKey: .meta)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(sms, forKey: .sms)
            
            
            
            
            try? container.encodeIfPresent(pushnotification, forKey: .pushnotification)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(pod, forKey: .pod)
            
            
            
            
            try? container.encodeIfPresent(service, forKey: .service)
            
            
            
            
            try? container.encodeIfPresent(step, forKey: .step)
            
            
            
            
            try? container.encodeIfPresent(source, forKey: .source)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(expireAt, forKey: .expireAt)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Communication {
    /*
        Model: Log
        Used By: Communication
    */

    class Log: Codable {
        
        
        public var email: LogEmail?
        
        public var sms: LogSms?
        
        public var pushnotification: LogPushnotification?
        
        public var id: String?
        
        public var pod: String?
        
        public var service: String?
        
        public var step: String?
        
        public var source: String?
        
        public var status: String?
        
        public var expireAt: String?
        
        public var createdAt: String?
        
        public var meta: LogMeta?
        
        public var application: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case email = "email"
            
            case sms = "sms"
            
            case pushnotification = "pushnotification"
            
            case id = "_id"
            
            case pod = "pod"
            
            case service = "service"
            
            case step = "step"
            
            case source = "source"
            
            case status = "status"
            
            case expireAt = "expire_at"
            
            case createdAt = "created_at"
            
            case meta = "meta"
            
            case application = "application"
            
        }

        public init(application: String? = nil, createdAt: String? = nil, email: LogEmail? = nil, expireAt: String? = nil, meta: LogMeta? = nil, pod: String? = nil, pushnotification: LogPushnotification? = nil, service: String? = nil, sms: LogSms? = nil, source: String? = nil, status: String? = nil, step: String? = nil, id: String? = nil) {
            
            self.email = email
            
            self.sms = sms
            
            self.pushnotification = pushnotification
            
            self.id = id
            
            self.pod = pod
            
            self.service = service
            
            self.step = step
            
            self.source = source
            
            self.status = status
            
            self.expireAt = expireAt
            
            self.createdAt = createdAt
            
            self.meta = meta
            
            self.application = application
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    email = try container.decode(LogEmail.self, forKey: .email)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sms = try container.decode(LogSms.self, forKey: .sms)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pushnotification = try container.decode(LogPushnotification.self, forKey: .pushnotification)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pod = try container.decode(String.self, forKey: .pod)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    service = try container.decode(String.self, forKey: .service)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    step = try container.decode(String.self, forKey: .step)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    source = try container.decode(String.self, forKey: .source)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    expireAt = try container.decode(String.self, forKey: .expireAt)
                
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
                    meta = try container.decode(LogMeta.self, forKey: .meta)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(sms, forKey: .sms)
            
            
            
            
            try? container.encodeIfPresent(pushnotification, forKey: .pushnotification)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(pod, forKey: .pod)
            
            
            
            
            try? container.encodeIfPresent(service, forKey: .service)
            
            
            
            
            try? container.encodeIfPresent(step, forKey: .step)
            
            
            
            
            try? container.encodeIfPresent(source, forKey: .source)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(expireAt, forKey: .expireAt)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            
        }
        
    }
}


