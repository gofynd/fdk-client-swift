

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var createdOn: String

        public var refundedBy: String

        public var id: String

        public var aggregatorPaymentObject: [String: Any]?

        public var collectedBy: String

        public var applicationId: String

        public var currentStatus: String

        public var companyId: String

        public var modifiedOn: String

        public var paymentMode: String

        public var paymentId: String?

        public var paymentModeIdentifier: String

        public var refundObject: [String: Any]?

        public var paymentGateway: String

        public var currency: String

        public var amountInPaisa: String

        public var userObject: [String: Any]

        public var allStatus: [String]

        public enum CodingKeys: String, CodingKey {
            case createdOn = "created_on"

            case refundedBy = "refunded_by"

            case id

            case aggregatorPaymentObject = "aggregator_payment_object"

            case collectedBy = "collected_by"

            case applicationId = "application_id"

            case currentStatus = "current_status"

            case companyId = "company_id"

            case modifiedOn = "modified_on"

            case paymentMode = "payment_mode"

            case paymentId = "payment_id"

            case paymentModeIdentifier = "payment_mode_identifier"

            case refundObject = "refund_object"

            case paymentGateway = "payment_gateway"

            case currency

            case amountInPaisa = "amount_in_paisa"

            case userObject = "user_object"

            case allStatus = "all_status"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.createdOn = createdOn

            self.refundedBy = refundedBy

            self.id = id

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.collectedBy = collectedBy

            self.applicationId = applicationId

            self.currentStatus = currentStatus

            self.companyId = companyId

            self.modifiedOn = modifiedOn

            self.paymentMode = paymentMode

            self.paymentId = paymentId

            self.paymentModeIdentifier = paymentModeIdentifier

            self.refundObject = refundObject

            self.paymentGateway = paymentGateway

            self.currency = currency

            self.amountInPaisa = amountInPaisa

            self.userObject = userObject

            self.allStatus = allStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            id = try container.decode(String.self, forKey: .id)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            companyId = try container.decode(String.self, forKey: .companyId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            currency = try container.decode(String.self, forKey: .currency)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            allStatus = try container.decode([String].self, forKey: .allStatus)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var createdOn: String

        public var refundedBy: String

        public var id: String

        public var aggregatorPaymentObject: [String: Any]?

        public var collectedBy: String

        public var applicationId: String

        public var currentStatus: String

        public var companyId: String

        public var modifiedOn: String

        public var paymentMode: String

        public var paymentId: String?

        public var paymentModeIdentifier: String

        public var refundObject: [String: Any]?

        public var paymentGateway: String

        public var currency: String

        public var amountInPaisa: String

        public var userObject: [String: Any]

        public var allStatus: [String]

        public enum CodingKeys: String, CodingKey {
            case createdOn = "created_on"

            case refundedBy = "refunded_by"

            case id

            case aggregatorPaymentObject = "aggregator_payment_object"

            case collectedBy = "collected_by"

            case applicationId = "application_id"

            case currentStatus = "current_status"

            case companyId = "company_id"

            case modifiedOn = "modified_on"

            case paymentMode = "payment_mode"

            case paymentId = "payment_id"

            case paymentModeIdentifier = "payment_mode_identifier"

            case refundObject = "refund_object"

            case paymentGateway = "payment_gateway"

            case currency

            case amountInPaisa = "amount_in_paisa"

            case userObject = "user_object"

            case allStatus = "all_status"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.createdOn = createdOn

            self.refundedBy = refundedBy

            self.id = id

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.collectedBy = collectedBy

            self.applicationId = applicationId

            self.currentStatus = currentStatus

            self.companyId = companyId

            self.modifiedOn = modifiedOn

            self.paymentMode = paymentMode

            self.paymentId = paymentId

            self.paymentModeIdentifier = paymentModeIdentifier

            self.refundObject = refundObject

            self.paymentGateway = paymentGateway

            self.currency = currency

            self.amountInPaisa = amountInPaisa

            self.userObject = userObject

            self.allStatus = allStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            id = try container.decode(String.self, forKey: .id)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            companyId = try container.decode(String.self, forKey: .companyId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            currency = try container.decode(String.self, forKey: .currency)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            allStatus = try container.decode([String].self, forKey: .allStatus)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)
        }
    }
}
