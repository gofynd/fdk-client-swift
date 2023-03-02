

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var unitPrice: Double

        public var affiliateStoreId: String

        public var pdfLinks: MarketPlacePdf?

        public var sku: String

        public var itemId: Int

        public var itemSize: String

        public var avlQty: Int

        public var priceEffective: Double

        public var modifiedOn: String

        public var fyndStoreId: String

        public var identifier: [String: Any]

        public var discount: Double

        public var transferPrice: Int

        public var hsnCodeId: String

        public var storeId: Int

        public var amountPaid: Double

        public var quantity: Int

        public var sellerIdentifier: String

        public var priceMarked: Double

        public var affiliateMeta: [String: Any]

        public var deliveryCharge: Double

        public var id: String

        public var companyId: Int

        public enum CodingKeys: String, CodingKey {
            case unitPrice = "unit_price"

            case affiliateStoreId = "affiliate_store_id"

            case pdfLinks = "pdf_links"

            case sku

            case itemId = "item_id"

            case itemSize = "item_size"

            case avlQty = "avl_qty"

            case priceEffective = "price_effective"

            case modifiedOn = "modified_on"

            case fyndStoreId = "fynd_store_id"

            case identifier

            case discount

            case transferPrice = "transfer_price"

            case hsnCodeId = "hsn_code_id"

            case storeId = "store_id"

            case amountPaid = "amount_paid"

            case quantity

            case sellerIdentifier = "seller_identifier"

            case priceMarked = "price_marked"

            case affiliateMeta = "affiliate_meta"

            case deliveryCharge = "delivery_charge"

            case id = "_id"

            case companyId = "company_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.unitPrice = unitPrice

            self.affiliateStoreId = affiliateStoreId

            self.pdfLinks = pdfLinks

            self.sku = sku

            self.itemId = itemId

            self.itemSize = itemSize

            self.avlQty = avlQty

            self.priceEffective = priceEffective

            self.modifiedOn = modifiedOn

            self.fyndStoreId = fyndStoreId

            self.identifier = identifier

            self.discount = discount

            self.transferPrice = transferPrice

            self.hsnCodeId = hsnCodeId

            self.storeId = storeId

            self.amountPaid = amountPaid

            self.quantity = quantity

            self.sellerIdentifier = sellerIdentifier

            self.priceMarked = priceMarked

            self.affiliateMeta = affiliateMeta

            self.deliveryCharge = deliveryCharge

            self.id = id

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sku = try container.decode(String.self, forKey: .sku)

            itemId = try container.decode(Int.self, forKey: .itemId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            discount = try container.decode(Double.self, forKey: .discount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            quantity = try container.decode(Int.self, forKey: .quantity)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            id = try container.decode(String.self, forKey: .id)

            companyId = try container.decode(Int.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}
