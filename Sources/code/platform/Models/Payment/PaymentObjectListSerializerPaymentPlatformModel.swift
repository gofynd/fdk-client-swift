

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var companyId: String

        public var collectedBy: String

        public var paymentMode: String

        public var createdOn: String

        public var modifiedOn: String

        public var userObject: [String: Any]

        public var paymentGateway: String

        public var amountInPaisa: String

        public var refundObject: [String: Any]?

        public var paymentModeIdentifier: String

        public var paymentId: String?

        public var refundedBy: String

        public var applicationId: String

        public var currency: String

        public var allStatus: [String]

        public var id: String

        public var aggregatorPaymentObject: [String: Any]?

        public var currentStatus: String

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case collectedBy = "collected_by"

            case paymentMode = "payment_mode"

            case createdOn = "created_on"

            case modifiedOn = "modified_on"

            case userObject = "user_object"

            case paymentGateway = "payment_gateway"

            case amountInPaisa = "amount_in_paisa"

            case refundObject = "refund_object"

            case paymentModeIdentifier = "payment_mode_identifier"

            case paymentId = "payment_id"

            case refundedBy = "refunded_by"

            case applicationId = "application_id"

            case currency

            case allStatus = "all_status"

            case id

            case aggregatorPaymentObject = "aggregator_payment_object"

            case currentStatus = "current_status"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.companyId = companyId

            self.collectedBy = collectedBy

            self.paymentMode = paymentMode

            self.createdOn = createdOn

            self.modifiedOn = modifiedOn

            self.userObject = userObject

            self.paymentGateway = paymentGateway

            self.amountInPaisa = amountInPaisa

            self.refundObject = refundObject

            self.paymentModeIdentifier = paymentModeIdentifier

            self.paymentId = paymentId

            self.refundedBy = refundedBy

            self.applicationId = applicationId

            self.currency = currency

            self.allStatus = allStatus

            self.id = id

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.currentStatus = currentStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(String.self, forKey: .companyId)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            currency = try container.decode(String.self, forKey: .currency)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            id = try container.decode(String.self, forKey: .id)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentStatus = try container.decode(String.self, forKey: .currentStatus)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var companyId: String

        public var collectedBy: String

        public var paymentMode: String

        public var createdOn: String

        public var modifiedOn: String

        public var userObject: [String: Any]

        public var paymentGateway: String

        public var amountInPaisa: String

        public var refundObject: [String: Any]?

        public var paymentModeIdentifier: String

        public var paymentId: String?

        public var refundedBy: String

        public var applicationId: String

        public var currency: String

        public var allStatus: [String]

        public var id: String

        public var aggregatorPaymentObject: [String: Any]?

        public var currentStatus: String

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case collectedBy = "collected_by"

            case paymentMode = "payment_mode"

            case createdOn = "created_on"

            case modifiedOn = "modified_on"

            case userObject = "user_object"

            case paymentGateway = "payment_gateway"

            case amountInPaisa = "amount_in_paisa"

            case refundObject = "refund_object"

            case paymentModeIdentifier = "payment_mode_identifier"

            case paymentId = "payment_id"

            case refundedBy = "refunded_by"

            case applicationId = "application_id"

            case currency

            case allStatus = "all_status"

            case id

            case aggregatorPaymentObject = "aggregator_payment_object"

            case currentStatus = "current_status"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.companyId = companyId

            self.collectedBy = collectedBy

            self.paymentMode = paymentMode

            self.createdOn = createdOn

            self.modifiedOn = modifiedOn

            self.userObject = userObject

            self.paymentGateway = paymentGateway

            self.amountInPaisa = amountInPaisa

            self.refundObject = refundObject

            self.paymentModeIdentifier = paymentModeIdentifier

            self.paymentId = paymentId

            self.refundedBy = refundedBy

            self.applicationId = applicationId

            self.currency = currency

            self.allStatus = allStatus

            self.id = id

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.currentStatus = currentStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(String.self, forKey: .companyId)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            currency = try container.decode(String.self, forKey: .currency)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            id = try container.decode(String.self, forKey: .id)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentStatus = try container.decode(String.self, forKey: .currentStatus)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)
        }
    }
}
