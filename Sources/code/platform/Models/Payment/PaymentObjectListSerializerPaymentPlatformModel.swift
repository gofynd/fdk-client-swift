

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var currency: String

        public var paymentId: String?

        public var allStatus: [String]

        public var companyId: String

        public var paymentMode: String

        public var id: String

        public var createdOn: String

        public var paymentModeIdentifier: String

        public var collectedBy: String

        public var refundedBy: String

        public var amountInPaisa: String

        public var modifiedOn: String

        public var userObject: [String: Any]

        public var paymentGateway: String

        public var refundObject: [String: Any]?

        public var applicationId: String

        public var aggregatorPaymentObject: [String: Any]?

        public var currentStatus: String

        public enum CodingKeys: String, CodingKey {
            case currency

            case paymentId = "payment_id"

            case allStatus = "all_status"

            case companyId = "company_id"

            case paymentMode = "payment_mode"

            case id

            case createdOn = "created_on"

            case paymentModeIdentifier = "payment_mode_identifier"

            case collectedBy = "collected_by"

            case refundedBy = "refunded_by"

            case amountInPaisa = "amount_in_paisa"

            case modifiedOn = "modified_on"

            case userObject = "user_object"

            case paymentGateway = "payment_gateway"

            case refundObject = "refund_object"

            case applicationId = "application_id"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case currentStatus = "current_status"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.currency = currency

            self.paymentId = paymentId

            self.allStatus = allStatus

            self.companyId = companyId

            self.paymentMode = paymentMode

            self.id = id

            self.createdOn = createdOn

            self.paymentModeIdentifier = paymentModeIdentifier

            self.collectedBy = collectedBy

            self.refundedBy = refundedBy

            self.amountInPaisa = amountInPaisa

            self.modifiedOn = modifiedOn

            self.userObject = userObject

            self.paymentGateway = paymentGateway

            self.refundObject = refundObject

            self.applicationId = applicationId

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.currentStatus = currentStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            allStatus = try container.decode([String].self, forKey: .allStatus)

            companyId = try container.decode(String.self, forKey: .companyId)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            id = try container.decode(String.self, forKey: .id)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            applicationId = try container.decode(String.self, forKey: .applicationId)

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

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

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
        public var currency: String

        public var paymentId: String?

        public var allStatus: [String]

        public var companyId: String

        public var paymentMode: String

        public var id: String

        public var createdOn: String

        public var paymentModeIdentifier: String

        public var collectedBy: String

        public var refundedBy: String

        public var amountInPaisa: String

        public var modifiedOn: String

        public var userObject: [String: Any]

        public var paymentGateway: String

        public var refundObject: [String: Any]?

        public var applicationId: String

        public var aggregatorPaymentObject: [String: Any]?

        public var currentStatus: String

        public enum CodingKeys: String, CodingKey {
            case currency

            case paymentId = "payment_id"

            case allStatus = "all_status"

            case companyId = "company_id"

            case paymentMode = "payment_mode"

            case id

            case createdOn = "created_on"

            case paymentModeIdentifier = "payment_mode_identifier"

            case collectedBy = "collected_by"

            case refundedBy = "refunded_by"

            case amountInPaisa = "amount_in_paisa"

            case modifiedOn = "modified_on"

            case userObject = "user_object"

            case paymentGateway = "payment_gateway"

            case refundObject = "refund_object"

            case applicationId = "application_id"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case currentStatus = "current_status"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.currency = currency

            self.paymentId = paymentId

            self.allStatus = allStatus

            self.companyId = companyId

            self.paymentMode = paymentMode

            self.id = id

            self.createdOn = createdOn

            self.paymentModeIdentifier = paymentModeIdentifier

            self.collectedBy = collectedBy

            self.refundedBy = refundedBy

            self.amountInPaisa = amountInPaisa

            self.modifiedOn = modifiedOn

            self.userObject = userObject

            self.paymentGateway = paymentGateway

            self.refundObject = refundObject

            self.applicationId = applicationId

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.currentStatus = currentStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            allStatus = try container.decode([String].self, forKey: .allStatus)

            companyId = try container.decode(String.self, forKey: .companyId)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            id = try container.decode(String.self, forKey: .id)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            applicationId = try container.decode(String.self, forKey: .applicationId)

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

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)
        }
    }
}
