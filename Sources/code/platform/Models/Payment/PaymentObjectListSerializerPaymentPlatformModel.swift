

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var id: String

        public var currentStatus: String

        public var allStatus: [String]

        public var collectedBy: String

        public var currency: String

        public var modifiedOn: String

        public var paymentModeIdentifier: String

        public var createdOn: String

        public var companyId: String

        public var aggregatorPaymentObject: [String: Any]?

        public var paymentGateway: String

        public var applicationId: String

        public var refundedBy: String

        public var userObject: [String: Any]

        public var refundObject: [String: Any]?

        public var amountInPaisa: String

        public var paymentMode: String

        public var paymentId: String?

        public enum CodingKeys: String, CodingKey {
            case id

            case currentStatus = "current_status"

            case allStatus = "all_status"

            case collectedBy = "collected_by"

            case currency

            case modifiedOn = "modified_on"

            case paymentModeIdentifier = "payment_mode_identifier"

            case createdOn = "created_on"

            case companyId = "company_id"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case paymentGateway = "payment_gateway"

            case applicationId = "application_id"

            case refundedBy = "refunded_by"

            case userObject = "user_object"

            case refundObject = "refund_object"

            case amountInPaisa = "amount_in_paisa"

            case paymentMode = "payment_mode"

            case paymentId = "payment_id"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.id = id

            self.currentStatus = currentStatus

            self.allStatus = allStatus

            self.collectedBy = collectedBy

            self.currency = currency

            self.modifiedOn = modifiedOn

            self.paymentModeIdentifier = paymentModeIdentifier

            self.createdOn = createdOn

            self.companyId = companyId

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.paymentGateway = paymentGateway

            self.applicationId = applicationId

            self.refundedBy = refundedBy

            self.userObject = userObject

            self.refundObject = refundObject

            self.amountInPaisa = amountInPaisa

            self.paymentMode = paymentMode

            self.paymentId = paymentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            currency = try container.decode(String.self, forKey: .currency)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            companyId = try container.decode(String.self, forKey: .companyId)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encode(paymentId, forKey: .paymentId)
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

        public var currentStatus: String

        public var allStatus: [String]

        public var collectedBy: String

        public var currency: String

        public var modifiedOn: String

        public var paymentModeIdentifier: String

        public var createdOn: String

        public var companyId: String

        public var aggregatorPaymentObject: [String: Any]?

        public var paymentGateway: String

        public var applicationId: String

        public var refundedBy: String

        public var userObject: [String: Any]

        public var refundObject: [String: Any]?

        public var amountInPaisa: String

        public var paymentMode: String

        public var paymentId: String?

        public enum CodingKeys: String, CodingKey {
            case id

            case currentStatus = "current_status"

            case allStatus = "all_status"

            case collectedBy = "collected_by"

            case currency

            case modifiedOn = "modified_on"

            case paymentModeIdentifier = "payment_mode_identifier"

            case createdOn = "created_on"

            case companyId = "company_id"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case paymentGateway = "payment_gateway"

            case applicationId = "application_id"

            case refundedBy = "refunded_by"

            case userObject = "user_object"

            case refundObject = "refund_object"

            case amountInPaisa = "amount_in_paisa"

            case paymentMode = "payment_mode"

            case paymentId = "payment_id"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.id = id

            self.currentStatus = currentStatus

            self.allStatus = allStatus

            self.collectedBy = collectedBy

            self.currency = currency

            self.modifiedOn = modifiedOn

            self.paymentModeIdentifier = paymentModeIdentifier

            self.createdOn = createdOn

            self.companyId = companyId

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.paymentGateway = paymentGateway

            self.applicationId = applicationId

            self.refundedBy = refundedBy

            self.userObject = userObject

            self.refundObject = refundObject

            self.amountInPaisa = amountInPaisa

            self.paymentMode = paymentMode

            self.paymentId = paymentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            currency = try container.decode(String.self, forKey: .currency)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            companyId = try container.decode(String.self, forKey: .companyId)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encode(paymentId, forKey: .paymentId)
        }
    }
}
