

import Foundation
public extension ApplicationClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */
    class OrderBeneficiaryDetails: Codable {
        public var bankName: String

        public var ifscCode: String

        public var mobile: Bool?

        public var title: String

        public var accountHolder: String

        public var isActive: Bool

        public var displayName: String

        public var createdOn: String

        public var accountNo: String

        public var delightsUserName: String?

        public var address: String

        public var comment: Bool?

        public var email: String

        public var beneficiaryId: String

        public var transferMode: String

        public var modifiedOn: String

        public var branchName: Bool?

        public var id: Int

        public var subtitle: String

        public enum CodingKeys: String, CodingKey {
            case bankName = "bank_name"

            case ifscCode = "ifsc_code"

            case mobile

            case title

            case accountHolder = "account_holder"

            case isActive = "is_active"

            case displayName = "display_name"

            case createdOn = "created_on"

            case accountNo = "account_no"

            case delightsUserName = "delights_user_name"

            case address

            case comment

            case email

            case beneficiaryId = "beneficiary_id"

            case transferMode = "transfer_mode"

            case modifiedOn = "modified_on"

            case branchName = "branch_name"

            case id

            case subtitle
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: Bool? = nil, comment: Bool? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: Bool? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.bankName = bankName

            self.ifscCode = ifscCode

            self.mobile = mobile

            self.title = title

            self.accountHolder = accountHolder

            self.isActive = isActive

            self.displayName = displayName

            self.createdOn = createdOn

            self.accountNo = accountNo

            self.delightsUserName = delightsUserName

            self.address = address

            self.comment = comment

            self.email = email

            self.beneficiaryId = beneficiaryId

            self.transferMode = transferMode

            self.modifiedOn = modifiedOn

            self.branchName = branchName

            self.id = id

            self.subtitle = subtitle
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bankName = try container.decode(String.self, forKey: .bankName)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            do {
                mobile = try container.decode(Bool.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            title = try container.decode(String.self, forKey: .title)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            displayName = try container.decode(String.self, forKey: .displayName)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address = try container.decode(String.self, forKey: .address)

            do {
                comment = try container.decode(Bool.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            email = try container.decode(String.self, forKey: .email)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                branchName = try container.decode(Bool.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(Int.self, forKey: .id)

            subtitle = try container.decode(String.self, forKey: .subtitle)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)
        }
    }
}
