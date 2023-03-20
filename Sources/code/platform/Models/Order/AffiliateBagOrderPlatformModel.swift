

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var fyndStoreId: String

        public var storeId: Int

        public var discount: Double

        public var sellerIdentifier: String

        public var priceMarked: Double

        public var companyId: Int

        public var deliveryCharge: Double

        public var transferPrice: Int

        public var avlQty: Int

        public var id: String

        public var amountPaid: Double

        public var itemSize: String

        public var quantity: Int

        public var affiliateStoreId: String

        public var sku: String

        public var pdfLinks: MarketPlacePdf?

        public var unitPrice: Double

        public var priceEffective: Double

        public var modifiedOn: String

        public var hsnCodeId: String

        public var affiliateMeta: [String: Any]

        public var identifier: [String: Any]

        public var itemId: Int

        public enum CodingKeys: String, CodingKey {
            case fyndStoreId = "fynd_store_id"

            case storeId = "store_id"

            case discount

            case sellerIdentifier = "seller_identifier"

            case priceMarked = "price_marked"

            case companyId = "company_id"

            case deliveryCharge = "delivery_charge"

            case transferPrice = "transfer_price"

            case avlQty = "avl_qty"

            case id = "_id"

            case amountPaid = "amount_paid"

            case itemSize = "item_size"

            case quantity

            case affiliateStoreId = "affiliate_store_id"

            case sku

            case pdfLinks = "pdf_links"

            case unitPrice = "unit_price"

            case priceEffective = "price_effective"

            case modifiedOn = "modified_on"

            case hsnCodeId = "hsn_code_id"

            case affiliateMeta = "affiliate_meta"

            case identifier

            case itemId = "item_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.fyndStoreId = fyndStoreId

            self.storeId = storeId

            self.discount = discount

            self.sellerIdentifier = sellerIdentifier

            self.priceMarked = priceMarked

            self.companyId = companyId

            self.deliveryCharge = deliveryCharge

            self.transferPrice = transferPrice

            self.avlQty = avlQty

            self.id = id

            self.amountPaid = amountPaid

            self.itemSize = itemSize

            self.quantity = quantity

            self.affiliateStoreId = affiliateStoreId

            self.sku = sku

            self.pdfLinks = pdfLinks

            self.unitPrice = unitPrice

            self.priceEffective = priceEffective

            self.modifiedOn = modifiedOn

            self.hsnCodeId = hsnCodeId

            self.affiliateMeta = affiliateMeta

            self.identifier = identifier

            self.itemId = itemId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            discount = try container.decode(Double.self, forKey: .discount)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            companyId = try container.decode(Int.self, forKey: .companyId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            id = try container.decode(String.self, forKey: .id)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            sku = try container.decode(String.self, forKey: .sku)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            itemId = try container.decode(Int.self, forKey: .itemId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(itemId, forKey: .itemId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var fyndStoreId: String

        public var storeId: Int

        public var discount: Double

        public var sellerIdentifier: String

        public var priceMarked: Double

        public var companyId: Int

        public var deliveryCharge: Double

        public var transferPrice: Int

        public var avlQty: Int

        public var id: String

        public var amountPaid: Double

        public var itemSize: String

        public var quantity: Int

        public var affiliateStoreId: String

        public var sku: String

        public var pdfLinks: MarketPlacePdf?

        public var unitPrice: Double

        public var priceEffective: Double

        public var modifiedOn: String

        public var hsnCodeId: String

        public var affiliateMeta: [String: Any]

        public var identifier: [String: Any]

        public var itemId: Int

        public enum CodingKeys: String, CodingKey {
            case fyndStoreId = "fynd_store_id"

            case storeId = "store_id"

            case discount

            case sellerIdentifier = "seller_identifier"

            case priceMarked = "price_marked"

            case companyId = "company_id"

            case deliveryCharge = "delivery_charge"

            case transferPrice = "transfer_price"

            case avlQty = "avl_qty"

            case id = "_id"

            case amountPaid = "amount_paid"

            case itemSize = "item_size"

            case quantity

            case affiliateStoreId = "affiliate_store_id"

            case sku

            case pdfLinks = "pdf_links"

            case unitPrice = "unit_price"

            case priceEffective = "price_effective"

            case modifiedOn = "modified_on"

            case hsnCodeId = "hsn_code_id"

            case affiliateMeta = "affiliate_meta"

            case identifier

            case itemId = "item_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.fyndStoreId = fyndStoreId

            self.storeId = storeId

            self.discount = discount

            self.sellerIdentifier = sellerIdentifier

            self.priceMarked = priceMarked

            self.companyId = companyId

            self.deliveryCharge = deliveryCharge

            self.transferPrice = transferPrice

            self.avlQty = avlQty

            self.id = id

            self.amountPaid = amountPaid

            self.itemSize = itemSize

            self.quantity = quantity

            self.affiliateStoreId = affiliateStoreId

            self.sku = sku

            self.pdfLinks = pdfLinks

            self.unitPrice = unitPrice

            self.priceEffective = priceEffective

            self.modifiedOn = modifiedOn

            self.hsnCodeId = hsnCodeId

            self.affiliateMeta = affiliateMeta

            self.identifier = identifier

            self.itemId = itemId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            discount = try container.decode(Double.self, forKey: .discount)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            companyId = try container.decode(Int.self, forKey: .companyId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            id = try container.decode(String.self, forKey: .id)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            sku = try container.decode(String.self, forKey: .sku)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            itemId = try container.decode(Int.self, forKey: .itemId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(itemId, forKey: .itemId)
        }
    }
}
