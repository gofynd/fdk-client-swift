

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var hsnCodeId: String

        public var deliveryCharge: Double

        public var quantity: Int

        public var pdfLinks: MarketPlacePdf?

        public var id: String

        public var companyId: Int

        public var unitPrice: Double

        public var affiliateStoreId: String

        public var discount: Double

        public var avlQty: Int

        public var identifier: [String: Any]

        public var modifiedOn: String

        public var amountPaid: Double

        public var sellerIdentifier: String

        public var storeId: Int

        public var affiliateMeta: [String: Any]

        public var sku: String

        public var priceEffective: Double

        public var fyndStoreId: String

        public var priceMarked: Double

        public var transferPrice: Int

        public var itemSize: String

        public var itemId: Int

        public enum CodingKeys: String, CodingKey {
            case hsnCodeId = "hsn_code_id"

            case deliveryCharge = "delivery_charge"

            case quantity

            case pdfLinks = "pdf_links"

            case id = "_id"

            case companyId = "company_id"

            case unitPrice = "unit_price"

            case affiliateStoreId = "affiliate_store_id"

            case discount

            case avlQty = "avl_qty"

            case identifier

            case modifiedOn = "modified_on"

            case amountPaid = "amount_paid"

            case sellerIdentifier = "seller_identifier"

            case storeId = "store_id"

            case affiliateMeta = "affiliate_meta"

            case sku

            case priceEffective = "price_effective"

            case fyndStoreId = "fynd_store_id"

            case priceMarked = "price_marked"

            case transferPrice = "transfer_price"

            case itemSize = "item_size"

            case itemId = "item_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.hsnCodeId = hsnCodeId

            self.deliveryCharge = deliveryCharge

            self.quantity = quantity

            self.pdfLinks = pdfLinks

            self.id = id

            self.companyId = companyId

            self.unitPrice = unitPrice

            self.affiliateStoreId = affiliateStoreId

            self.discount = discount

            self.avlQty = avlQty

            self.identifier = identifier

            self.modifiedOn = modifiedOn

            self.amountPaid = amountPaid

            self.sellerIdentifier = sellerIdentifier

            self.storeId = storeId

            self.affiliateMeta = affiliateMeta

            self.sku = sku

            self.priceEffective = priceEffective

            self.fyndStoreId = fyndStoreId

            self.priceMarked = priceMarked

            self.transferPrice = transferPrice

            self.itemSize = itemSize

            self.itemId = itemId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            quantity = try container.decode(Int.self, forKey: .quantity)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            companyId = try container.decode(Int.self, forKey: .companyId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            discount = try container.decode(Double.self, forKey: .discount)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            sku = try container.decode(String.self, forKey: .sku)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            itemId = try container.decode(Int.self, forKey: .itemId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(itemId, forKey: .itemId)
        }
    }
}
