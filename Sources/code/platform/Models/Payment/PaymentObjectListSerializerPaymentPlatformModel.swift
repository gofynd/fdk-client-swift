

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var refundedBy: String

        public var modifiedOn: String

        public var refundObject: [String: Any]?

        public var amountInPaisa: String

        public var allStatus: [String]

        public var applicationId: String

        public var paymentModeIdentifier: String

        public var paymentMode: String

        public var collectedBy: String

        public var id: String

        public var paymentGateway: String

        public var createdOn: String

        public var userObject: [String: Any]

        public var companyId: String

        public var currency: String

        public var aggregatorPaymentObject: [String: Any]?

        public var paymentId: String?

        public var currentStatus: String

        public enum CodingKeys: String, CodingKey {
            case refundedBy = "refunded_by"

            case modifiedOn = "modified_on"

            case refundObject = "refund_object"

            case amountInPaisa = "amount_in_paisa"

            case allStatus = "all_status"

            case applicationId = "application_id"

            case paymentModeIdentifier = "payment_mode_identifier"

            case paymentMode = "payment_mode"

            case collectedBy = "collected_by"

            case id

            case paymentGateway = "payment_gateway"

            case createdOn = "created_on"

            case userObject = "user_object"

            case companyId = "company_id"

            case currency

            case aggregatorPaymentObject = "aggregator_payment_object"

            case paymentId = "payment_id"

            case currentStatus = "current_status"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.refundedBy = refundedBy

            self.modifiedOn = modifiedOn

            self.refundObject = refundObject

            self.amountInPaisa = amountInPaisa

            self.allStatus = allStatus

            self.applicationId = applicationId

            self.paymentModeIdentifier = paymentModeIdentifier

            self.paymentMode = paymentMode

            self.collectedBy = collectedBy

            self.id = id

            self.paymentGateway = paymentGateway

            self.createdOn = createdOn

            self.userObject = userObject

            self.companyId = companyId

            self.currency = currency

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.paymentId = paymentId

            self.currentStatus = currentStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            id = try container.decode(String.self, forKey: .id)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            companyId = try container.decode(String.self, forKey: .companyId)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentStatus = try container.decode(String.self, forKey: .currentStatus)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encode(paymentId, forKey: .paymentId)

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
        public var refundedBy: String

        public var modifiedOn: String

        public var refundObject: [String: Any]?

        public var amountInPaisa: String

        public var allStatus: [String]

        public var applicationId: String

        public var paymentModeIdentifier: String

        public var paymentMode: String

        public var collectedBy: String

        public var id: String

        public var paymentGateway: String

        public var createdOn: String

        public var userObject: [String: Any]

        public var companyId: String

        public var currency: String

        public var aggregatorPaymentObject: [String: Any]?

        public var paymentId: String?

        public var currentStatus: String

        public enum CodingKeys: String, CodingKey {
            case refundedBy = "refunded_by"

            case modifiedOn = "modified_on"

            case refundObject = "refund_object"

            case amountInPaisa = "amount_in_paisa"

            case allStatus = "all_status"

            case applicationId = "application_id"

            case paymentModeIdentifier = "payment_mode_identifier"

            case paymentMode = "payment_mode"

            case collectedBy = "collected_by"

            case id

            case paymentGateway = "payment_gateway"

            case createdOn = "created_on"

            case userObject = "user_object"

            case companyId = "company_id"

            case currency

            case aggregatorPaymentObject = "aggregator_payment_object"

            case paymentId = "payment_id"

            case currentStatus = "current_status"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.refundedBy = refundedBy

            self.modifiedOn = modifiedOn

            self.refundObject = refundObject

            self.amountInPaisa = amountInPaisa

            self.allStatus = allStatus

            self.applicationId = applicationId

            self.paymentModeIdentifier = paymentModeIdentifier

            self.paymentMode = paymentMode

            self.collectedBy = collectedBy

            self.id = id

            self.paymentGateway = paymentGateway

            self.createdOn = createdOn

            self.userObject = userObject

            self.companyId = companyId

            self.currency = currency

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.paymentId = paymentId

            self.currentStatus = currentStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            id = try container.decode(String.self, forKey: .id)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            companyId = try container.decode(String.self, forKey: .companyId)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentStatus = try container.decode(String.self, forKey: .currentStatus)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)
        }
    }
}
