

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var priceEffective: Double

        public var amountPaid: Double

        public var storeId: Int

        public var modifiedOn: String

        public var transferPrice: Int

        public var affiliateStoreId: String

        public var affiliateMeta: [String: Any]

        public var fyndStoreId: String

        public var priceMarked: Double

        public var sku: String

        public var quantity: Int

        public var unitPrice: Double

        public var identifier: [String: Any]

        public var deliveryCharge: Double

        public var pdfLinks: MarketPlacePdf?

        public var sellerIdentifier: String

        public var itemSize: String

        public var companyId: Int

        public var hsnCodeId: String

        public var itemId: Int

        public var avlQty: Int

        public var discount: Double

        public var id: String

        public enum CodingKeys: String, CodingKey {
            case priceEffective = "price_effective"

            case amountPaid = "amount_paid"

            case storeId = "store_id"

            case modifiedOn = "modified_on"

            case transferPrice = "transfer_price"

            case affiliateStoreId = "affiliate_store_id"

            case affiliateMeta = "affiliate_meta"

            case fyndStoreId = "fynd_store_id"

            case priceMarked = "price_marked"

            case sku

            case quantity

            case unitPrice = "unit_price"

            case identifier

            case deliveryCharge = "delivery_charge"

            case pdfLinks = "pdf_links"

            case sellerIdentifier = "seller_identifier"

            case itemSize = "item_size"

            case companyId = "company_id"

            case hsnCodeId = "hsn_code_id"

            case itemId = "item_id"

            case avlQty = "avl_qty"

            case discount

            case id = "_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.priceEffective = priceEffective

            self.amountPaid = amountPaid

            self.storeId = storeId

            self.modifiedOn = modifiedOn

            self.transferPrice = transferPrice

            self.affiliateStoreId = affiliateStoreId

            self.affiliateMeta = affiliateMeta

            self.fyndStoreId = fyndStoreId

            self.priceMarked = priceMarked

            self.sku = sku

            self.quantity = quantity

            self.unitPrice = unitPrice

            self.identifier = identifier

            self.deliveryCharge = deliveryCharge

            self.pdfLinks = pdfLinks

            self.sellerIdentifier = sellerIdentifier

            self.itemSize = itemSize

            self.companyId = companyId

            self.hsnCodeId = hsnCodeId

            self.itemId = itemId

            self.avlQty = avlQty

            self.discount = discount

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            storeId = try container.decode(Int.self, forKey: .storeId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            sku = try container.decode(String.self, forKey: .sku)

            quantity = try container.decode(Int.self, forKey: .quantity)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            companyId = try container.decode(Int.self, forKey: .companyId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            discount = try container.decode(Double.self, forKey: .discount)

            id = try container.decode(String.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
