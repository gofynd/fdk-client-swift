

import Foundation


public extension PlatformClient.Order {
    /*
        Model: HistoryMeta
        Used By: Order
    */

    class HistoryMeta: Codable {
        
        
        public var storeId: Int?
        
        public var status: String?
        
        public var status1: String?
        
        public var callId: String?
        
        public var starttime: String?
        
        public var reason: HistoryReason?
        
        public var shortLink: String?
        
        public var endtime: String?
        
        public var storeName: String?
        
        public var caller: String?
        
        public var storeCode: String?
        
        public var billsec: String?
        
        public var recordpath: String?
        
        public var status2: String?
        
        public var callerid: String?
        
        public var duration: String?
        
        public var channelType: String?
        
        public var activityComment: String?
        
        public var activityType: String?
        
        public var receiver: String?
        
        public var recipient: String?
        
        public var slug: String?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case storeId = "store_id"
            
            case status = "status"
            
            case status1 = "status1"
            
            case callId = "call_id"
            
            case starttime = "starttime"
            
            case reason = "reason"
            
            case shortLink = "short_link"
            
            case endtime = "endtime"
            
            case storeName = "store_name"
            
            case caller = "caller"
            
            case storeCode = "store_code"
            
            case billsec = "billsec"
            
            case recordpath = "recordpath"
            
            case status2 = "status2"
            
            case callerid = "callerid"
            
            case duration = "duration"
            
            case channelType = "channel_type"
            
            case activityComment = "activity_comment"
            
            case activityType = "activity_type"
            
            case receiver = "receiver"
            
            case recipient = "recipient"
            
            case slug = "slug"
            
            case message = "message"
            
        }

        public init(activityComment: String? = nil, activityType: String? = nil, billsec: String? = nil, caller: String? = nil, callerid: String? = nil, callId: String? = nil, channelType: String? = nil, duration: String? = nil, endtime: String? = nil, message: String? = nil, reason: HistoryReason? = nil, receiver: String? = nil, recipient: String? = nil, recordpath: String? = nil, shortLink: String? = nil, slug: String? = nil, starttime: String? = nil, status: String? = nil, status1: String? = nil, status2: String? = nil, storeCode: String? = nil, storeId: Int? = nil, storeName: String? = nil) {
            
            self.storeId = storeId
            
            self.status = status
            
            self.status1 = status1
            
            self.callId = callId
            
            self.starttime = starttime
            
            self.reason = reason
            
            self.shortLink = shortLink
            
            self.endtime = endtime
            
            self.storeName = storeName
            
            self.caller = caller
            
            self.storeCode = storeCode
            
            self.billsec = billsec
            
            self.recordpath = recordpath
            
            self.status2 = status2
            
            self.callerid = callerid
            
            self.duration = duration
            
            self.channelType = channelType
            
            self.activityComment = activityComment
            
            self.activityType = activityType
            
            self.receiver = receiver
            
            self.recipient = recipient
            
            self.slug = slug
            
            self.message = message
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    storeId = try container.decode(Int.self, forKey: .storeId)
                
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
                    status1 = try container.decode(String.self, forKey: .status1)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    callId = try container.decode(String.self, forKey: .callId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    starttime = try container.decode(String.self, forKey: .starttime)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    reason = try container.decode(HistoryReason.self, forKey: .reason)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shortLink = try container.decode(String.self, forKey: .shortLink)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    endtime = try container.decode(String.self, forKey: .endtime)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeName = try container.decode(String.self, forKey: .storeName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    caller = try container.decode(String.self, forKey: .caller)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeCode = try container.decode(String.self, forKey: .storeCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    billsec = try container.decode(String.self, forKey: .billsec)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    recordpath = try container.decode(String.self, forKey: .recordpath)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status2 = try container.decode(String.self, forKey: .status2)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    callerid = try container.decode(String.self, forKey: .callerid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    duration = try container.decode(String.self, forKey: .duration)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    channelType = try container.decode(String.self, forKey: .channelType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    activityComment = try container.decode(String.self, forKey: .activityComment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    activityType = try container.decode(String.self, forKey: .activityType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    receiver = try container.decode(String.self, forKey: .receiver)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    recipient = try container.decode(String.self, forKey: .recipient)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(storeId, forKey: .storeId)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(status1, forKey: .status1)
            
            
            
            
            try? container.encodeIfPresent(callId, forKey: .callId)
            
            
            
            
            try? container.encodeIfPresent(starttime, forKey: .starttime)
            
            
            
            
            try? container.encodeIfPresent(reason, forKey: .reason)
            
            
            
            
            try? container.encodeIfPresent(shortLink, forKey: .shortLink)
            
            
            
            
            try? container.encodeIfPresent(endtime, forKey: .endtime)
            
            
            
            
            try? container.encodeIfPresent(storeName, forKey: .storeName)
            
            
            
            
            try? container.encodeIfPresent(caller, forKey: .caller)
            
            
            
            
            try? container.encodeIfPresent(storeCode, forKey: .storeCode)
            
            
            
            
            try? container.encodeIfPresent(billsec, forKey: .billsec)
            
            
            
            
            try? container.encodeIfPresent(recordpath, forKey: .recordpath)
            
            
            
            
            try? container.encodeIfPresent(status2, forKey: .status2)
            
            
            
            
            try? container.encodeIfPresent(callerid, forKey: .callerid)
            
            
            
            
            try? container.encodeIfPresent(duration, forKey: .duration)
            
            
            
            
            try? container.encodeIfPresent(channelType, forKey: .channelType)
            
            
            
            
            try? container.encodeIfPresent(activityComment, forKey: .activityComment)
            
            
            
            
            try? container.encodeIfPresent(activityType, forKey: .activityType)
            
            
            
            
            try? container.encodeIfPresent(receiver, forKey: .receiver)
            
            
            
            
            try? container.encodeIfPresent(recipient, forKey: .recipient)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: HistoryMeta
        Used By: Order
    */

    class HistoryMeta: Codable {
        
        
        public var storeId: Int?
        
        public var status: String?
        
        public var status1: String?
        
        public var callId: String?
        
        public var starttime: String?
        
        public var reason: HistoryReason?
        
        public var shortLink: String?
        
        public var endtime: String?
        
        public var storeName: String?
        
        public var caller: String?
        
        public var storeCode: String?
        
        public var billsec: String?
        
        public var recordpath: String?
        
        public var status2: String?
        
        public var callerid: String?
        
        public var duration: String?
        
        public var channelType: String?
        
        public var activityComment: String?
        
        public var activityType: String?
        
        public var receiver: String?
        
        public var recipient: String?
        
        public var slug: String?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case storeId = "store_id"
            
            case status = "status"
            
            case status1 = "status1"
            
            case callId = "call_id"
            
            case starttime = "starttime"
            
            case reason = "reason"
            
            case shortLink = "short_link"
            
            case endtime = "endtime"
            
            case storeName = "store_name"
            
            case caller = "caller"
            
            case storeCode = "store_code"
            
            case billsec = "billsec"
            
            case recordpath = "recordpath"
            
            case status2 = "status2"
            
            case callerid = "callerid"
            
            case duration = "duration"
            
            case channelType = "channel_type"
            
            case activityComment = "activity_comment"
            
            case activityType = "activity_type"
            
            case receiver = "receiver"
            
            case recipient = "recipient"
            
            case slug = "slug"
            
            case message = "message"
            
        }

        public init(activityComment: String? = nil, activityType: String? = nil, billsec: String? = nil, caller: String? = nil, callerid: String? = nil, callId: String? = nil, channelType: String? = nil, duration: String? = nil, endtime: String? = nil, message: String? = nil, reason: HistoryReason? = nil, receiver: String? = nil, recipient: String? = nil, recordpath: String? = nil, shortLink: String? = nil, slug: String? = nil, starttime: String? = nil, status: String? = nil, status1: String? = nil, status2: String? = nil, storeCode: String? = nil, storeId: Int? = nil, storeName: String? = nil) {
            
            self.storeId = storeId
            
            self.status = status
            
            self.status1 = status1
            
            self.callId = callId
            
            self.starttime = starttime
            
            self.reason = reason
            
            self.shortLink = shortLink
            
            self.endtime = endtime
            
            self.storeName = storeName
            
            self.caller = caller
            
            self.storeCode = storeCode
            
            self.billsec = billsec
            
            self.recordpath = recordpath
            
            self.status2 = status2
            
            self.callerid = callerid
            
            self.duration = duration
            
            self.channelType = channelType
            
            self.activityComment = activityComment
            
            self.activityType = activityType
            
            self.receiver = receiver
            
            self.recipient = recipient
            
            self.slug = slug
            
            self.message = message
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    storeId = try container.decode(Int.self, forKey: .storeId)
                
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
                    status1 = try container.decode(String.self, forKey: .status1)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    callId = try container.decode(String.self, forKey: .callId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    starttime = try container.decode(String.self, forKey: .starttime)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    reason = try container.decode(HistoryReason.self, forKey: .reason)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shortLink = try container.decode(String.self, forKey: .shortLink)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    endtime = try container.decode(String.self, forKey: .endtime)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeName = try container.decode(String.self, forKey: .storeName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    caller = try container.decode(String.self, forKey: .caller)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeCode = try container.decode(String.self, forKey: .storeCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    billsec = try container.decode(String.self, forKey: .billsec)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    recordpath = try container.decode(String.self, forKey: .recordpath)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status2 = try container.decode(String.self, forKey: .status2)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    callerid = try container.decode(String.self, forKey: .callerid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    duration = try container.decode(String.self, forKey: .duration)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    channelType = try container.decode(String.self, forKey: .channelType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    activityComment = try container.decode(String.self, forKey: .activityComment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    activityType = try container.decode(String.self, forKey: .activityType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    receiver = try container.decode(String.self, forKey: .receiver)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    recipient = try container.decode(String.self, forKey: .recipient)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(storeId, forKey: .storeId)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(status1, forKey: .status1)
            
            
            
            
            try? container.encodeIfPresent(callId, forKey: .callId)
            
            
            
            
            try? container.encodeIfPresent(starttime, forKey: .starttime)
            
            
            
            
            try? container.encodeIfPresent(reason, forKey: .reason)
            
            
            
            
            try? container.encodeIfPresent(shortLink, forKey: .shortLink)
            
            
            
            
            try? container.encodeIfPresent(endtime, forKey: .endtime)
            
            
            
            
            try? container.encodeIfPresent(storeName, forKey: .storeName)
            
            
            
            
            try? container.encodeIfPresent(caller, forKey: .caller)
            
            
            
            
            try? container.encodeIfPresent(storeCode, forKey: .storeCode)
            
            
            
            
            try? container.encodeIfPresent(billsec, forKey: .billsec)
            
            
            
            
            try? container.encodeIfPresent(recordpath, forKey: .recordpath)
            
            
            
            
            try? container.encodeIfPresent(status2, forKey: .status2)
            
            
            
            
            try? container.encodeIfPresent(callerid, forKey: .callerid)
            
            
            
            
            try? container.encodeIfPresent(duration, forKey: .duration)
            
            
            
            
            try? container.encodeIfPresent(channelType, forKey: .channelType)
            
            
            
            
            try? container.encodeIfPresent(activityComment, forKey: .activityComment)
            
            
            
            
            try? container.encodeIfPresent(activityType, forKey: .activityType)
            
            
            
            
            try? container.encodeIfPresent(receiver, forKey: .receiver)
            
            
            
            
            try? container.encodeIfPresent(recipient, forKey: .recipient)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}


