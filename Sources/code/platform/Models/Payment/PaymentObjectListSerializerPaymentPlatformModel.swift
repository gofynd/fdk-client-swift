

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var id: String

        public var refundedBy: String

        public var paymentModeIdentifier: String

        public var collectedBy: String

        public var createdOn: String

        public var userObject: [String: Any]

        public var allStatus: [String]

        public var currentStatus: String

        public var paymentGateway: String

        public var paymentMode: String

        public var paymentId: String?

        public var currency: String

        public var applicationId: String

        public var aggregatorPaymentObject: [String: Any]?

        public var amountInPaisa: String

        public var companyId: String

        public var modifiedOn: String

        public var refundObject: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case id

            case refundedBy = "refunded_by"

            case paymentModeIdentifier = "payment_mode_identifier"

            case collectedBy = "collected_by"

            case createdOn = "created_on"

            case userObject = "user_object"

            case allStatus = "all_status"

            case currentStatus = "current_status"

            case paymentGateway = "payment_gateway"

            case paymentMode = "payment_mode"

            case paymentId = "payment_id"

            case currency

            case applicationId = "application_id"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case amountInPaisa = "amount_in_paisa"

            case companyId = "company_id"

            case modifiedOn = "modified_on"

            case refundObject = "refund_object"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.id = id

            self.refundedBy = refundedBy

            self.paymentModeIdentifier = paymentModeIdentifier

            self.collectedBy = collectedBy

            self.createdOn = createdOn

            self.userObject = userObject

            self.allStatus = allStatus

            self.currentStatus = currentStatus

            self.paymentGateway = paymentGateway

            self.paymentMode = paymentMode

            self.paymentId = paymentId

            self.currency = currency

            self.applicationId = applicationId

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.amountInPaisa = amountInPaisa

            self.companyId = companyId

            self.modifiedOn = modifiedOn

            self.refundObject = refundObject
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            companyId = try container.decode(String.self, forKey: .companyId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encode(refundObject, forKey: .refundObject)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var id: String

        public var refundedBy: String

        public var paymentModeIdentifier: String

        public var collectedBy: String

        public var createdOn: String

        public var userObject: [String: Any]

        public var allStatus: [String]

        public var currentStatus: String

        public var paymentGateway: String

        public var paymentMode: String

        public var paymentId: String?

        public var currency: String

        public var applicationId: String

        public var aggregatorPaymentObject: [String: Any]?

        public var amountInPaisa: String

        public var companyId: String

        public var modifiedOn: String

        public var refundObject: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case id

            case refundedBy = "refunded_by"

            case paymentModeIdentifier = "payment_mode_identifier"

            case collectedBy = "collected_by"

            case createdOn = "created_on"

            case userObject = "user_object"

            case allStatus = "all_status"

            case currentStatus = "current_status"

            case paymentGateway = "payment_gateway"

            case paymentMode = "payment_mode"

            case paymentId = "payment_id"

            case currency

            case applicationId = "application_id"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case amountInPaisa = "amount_in_paisa"

            case companyId = "company_id"

            case modifiedOn = "modified_on"

            case refundObject = "refund_object"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.id = id

            self.refundedBy = refundedBy

            self.paymentModeIdentifier = paymentModeIdentifier

            self.collectedBy = collectedBy

            self.createdOn = createdOn

            self.userObject = userObject

            self.allStatus = allStatus

            self.currentStatus = currentStatus

            self.paymentGateway = paymentGateway

            self.paymentMode = paymentMode

            self.paymentId = paymentId

            self.currency = currency

            self.applicationId = applicationId

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.amountInPaisa = amountInPaisa

            self.companyId = companyId

            self.modifiedOn = modifiedOn

            self.refundObject = refundObject
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            companyId = try container.decode(String.self, forKey: .companyId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encode(refundObject, forKey: .refundObject)
        }
    }
}
