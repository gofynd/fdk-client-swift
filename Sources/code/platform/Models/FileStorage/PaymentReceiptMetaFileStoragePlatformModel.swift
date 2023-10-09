

import Foundation


public extension PlatformClient.FileStorage {
    /*
        Model: PaymentReceiptMeta
        Used By: FileStorage
    */

    class PaymentReceiptMeta: Codable {
        
        
        public var jobType: String?
        
        public var action: String?
        
        public var event: [String: Any]?
        
        public var organizatonId: String?
        
        public var companyId: Double?
        
        public var applicationId: [String]?
        
        public var format: PaymentReceiptFormat?
        
        public var traceId: [String]?
        
        public var createdTimestamp: Double?
        
        public var service: PaymentReceiptService?
        
        public var eventTraceInfo: [String: Any]?
        
        public var trace: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case jobType = "job_type"
            
            case action = "action"
            
            case event = "event"
            
            case organizatonId = "organizaton_id"
            
            case companyId = "company_id"
            
            case applicationId = "application_id"
            
            case format = "format"
            
            case traceId = "trace_id"
            
            case createdTimestamp = "created_timestamp"
            
            case service = "service"
            
            case eventTraceInfo = "event_trace_info"
            
            case trace = "trace"
            
        }

        public init(action: String? = nil, applicationId: [String]? = nil, companyId: Double? = nil, createdTimestamp: Double? = nil, event: [String: Any]? = nil, eventTraceInfo: [String: Any]? = nil, format: PaymentReceiptFormat? = nil, jobType: String? = nil, organizatonId: String? = nil, service: PaymentReceiptService? = nil, trace: String? = nil, traceId: [String]? = nil) {
            
            self.jobType = jobType
            
            self.action = action
            
            self.event = event
            
            self.organizatonId = organizatonId
            
            self.companyId = companyId
            
            self.applicationId = applicationId
            
            self.format = format
            
            self.traceId = traceId
            
            self.createdTimestamp = createdTimestamp
            
            self.service = service
            
            self.eventTraceInfo = eventTraceInfo
            
            self.trace = trace
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    jobType = try container.decode(String.self, forKey: .jobType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    action = try container.decode(String.self, forKey: .action)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    event = try container.decode([String: Any].self, forKey: .event)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    organizatonId = try container.decode(String.self, forKey: .organizatonId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyId = try container.decode(Double.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    applicationId = try container.decode([String].self, forKey: .applicationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    format = try container.decode(PaymentReceiptFormat.self, forKey: .format)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    traceId = try container.decode([String].self, forKey: .traceId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdTimestamp = try container.decode(Double.self, forKey: .createdTimestamp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    service = try container.decode(PaymentReceiptService.self, forKey: .service)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    eventTraceInfo = try container.decode([String: Any].self, forKey: .eventTraceInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    trace = try container.decode(String.self, forKey: .trace)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(jobType, forKey: .jobType)
            
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            
            try? container.encodeIfPresent(event, forKey: .event)
            
            
            
            
            try? container.encodeIfPresent(organizatonId, forKey: .organizatonId)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(format, forKey: .format)
            
            
            
            
            try? container.encodeIfPresent(traceId, forKey: .traceId)
            
            
            
            
            try? container.encodeIfPresent(createdTimestamp, forKey: .createdTimestamp)
            
            
            
            
            try? container.encodeIfPresent(service, forKey: .service)
            
            
            
            
            try? container.encodeIfPresent(eventTraceInfo, forKey: .eventTraceInfo)
            
            
            
            
            try? container.encodeIfPresent(trace, forKey: .trace)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.FileStorage {
    /*
        Model: PaymentReceiptMeta
        Used By: FileStorage
    */

    class PaymentReceiptMeta: Codable {
        
        
        public var jobType: String?
        
        public var action: String?
        
        public var event: [String: Any]?
        
        public var organizatonId: String?
        
        public var companyId: Double?
        
        public var applicationId: [String]?
        
        public var format: PaymentReceiptFormat?
        
        public var traceId: [String]?
        
        public var createdTimestamp: Double?
        
        public var service: PaymentReceiptService?
        
        public var eventTraceInfo: [String: Any]?
        
        public var trace: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case jobType = "job_type"
            
            case action = "action"
            
            case event = "event"
            
            case organizatonId = "organizaton_id"
            
            case companyId = "company_id"
            
            case applicationId = "application_id"
            
            case format = "format"
            
            case traceId = "trace_id"
            
            case createdTimestamp = "created_timestamp"
            
            case service = "service"
            
            case eventTraceInfo = "event_trace_info"
            
            case trace = "trace"
            
        }

        public init(action: String? = nil, applicationId: [String]? = nil, companyId: Double? = nil, createdTimestamp: Double? = nil, event: [String: Any]? = nil, eventTraceInfo: [String: Any]? = nil, format: PaymentReceiptFormat? = nil, jobType: String? = nil, organizatonId: String? = nil, service: PaymentReceiptService? = nil, trace: String? = nil, traceId: [String]? = nil) {
            
            self.jobType = jobType
            
            self.action = action
            
            self.event = event
            
            self.organizatonId = organizatonId
            
            self.companyId = companyId
            
            self.applicationId = applicationId
            
            self.format = format
            
            self.traceId = traceId
            
            self.createdTimestamp = createdTimestamp
            
            self.service = service
            
            self.eventTraceInfo = eventTraceInfo
            
            self.trace = trace
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    jobType = try container.decode(String.self, forKey: .jobType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    action = try container.decode(String.self, forKey: .action)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    event = try container.decode([String: Any].self, forKey: .event)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    organizatonId = try container.decode(String.self, forKey: .organizatonId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyId = try container.decode(Double.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    applicationId = try container.decode([String].self, forKey: .applicationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    format = try container.decode(PaymentReceiptFormat.self, forKey: .format)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    traceId = try container.decode([String].self, forKey: .traceId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdTimestamp = try container.decode(Double.self, forKey: .createdTimestamp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    service = try container.decode(PaymentReceiptService.self, forKey: .service)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    eventTraceInfo = try container.decode([String: Any].self, forKey: .eventTraceInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    trace = try container.decode(String.self, forKey: .trace)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(jobType, forKey: .jobType)
            
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            
            try? container.encodeIfPresent(event, forKey: .event)
            
            
            
            
            try? container.encodeIfPresent(organizatonId, forKey: .organizatonId)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(format, forKey: .format)
            
            
            
            
            try? container.encodeIfPresent(traceId, forKey: .traceId)
            
            
            
            
            try? container.encodeIfPresent(createdTimestamp, forKey: .createdTimestamp)
            
            
            
            
            try? container.encodeIfPresent(service, forKey: .service)
            
            
            
            
            try? container.encodeIfPresent(eventTraceInfo, forKey: .eventTraceInfo)
            
            
            
            
            try? container.encodeIfPresent(trace, forKey: .trace)
            
            
        }
        
    }
}


