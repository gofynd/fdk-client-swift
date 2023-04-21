

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var sellerIdentifier: String

        public var discount: Double

        public var priceMarked: Double

        public var priceEffective: Double

        public var storeId: Int

        public var itemId: Int

        public var identifier: [String: Any]

        public var transferPrice: Int

        public var pdfLinks: MarketPlacePdf?

        public var affiliateMeta: [String: Any]

        public var avlQty: Int

        public var fyndStoreId: String

        public var unitPrice: Double

        public var deliveryCharge: Double

        public var id: String

        public var amountPaid: Double

        public var quantity: Int

        public var affiliateStoreId: String

        public var companyId: Int

        public var modifiedOn: String

        public var hsnCodeId: String

        public var sku: String

        public var itemSize: String

        public enum CodingKeys: String, CodingKey {
            case sellerIdentifier = "seller_identifier"

            case discount

            case priceMarked = "price_marked"

            case priceEffective = "price_effective"

            case storeId = "store_id"

            case itemId = "item_id"

            case identifier

            case transferPrice = "transfer_price"

            case pdfLinks = "pdf_links"

            case affiliateMeta = "affiliate_meta"

            case avlQty = "avl_qty"

            case fyndStoreId = "fynd_store_id"

            case unitPrice = "unit_price"

            case deliveryCharge = "delivery_charge"

            case id = "_id"

            case amountPaid = "amount_paid"

            case quantity

            case affiliateStoreId = "affiliate_store_id"

            case companyId = "company_id"

            case modifiedOn = "modified_on"

            case hsnCodeId = "hsn_code_id"

            case sku

            case itemSize = "item_size"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.sellerIdentifier = sellerIdentifier

            self.discount = discount

            self.priceMarked = priceMarked

            self.priceEffective = priceEffective

            self.storeId = storeId

            self.itemId = itemId

            self.identifier = identifier

            self.transferPrice = transferPrice

            self.pdfLinks = pdfLinks

            self.affiliateMeta = affiliateMeta

            self.avlQty = avlQty

            self.fyndStoreId = fyndStoreId

            self.unitPrice = unitPrice

            self.deliveryCharge = deliveryCharge

            self.id = id

            self.amountPaid = amountPaid

            self.quantity = quantity

            self.affiliateStoreId = affiliateStoreId

            self.companyId = companyId

            self.modifiedOn = modifiedOn

            self.hsnCodeId = hsnCodeId

            self.sku = sku

            self.itemSize = itemSize
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            discount = try container.decode(Double.self, forKey: .discount)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            storeId = try container.decode(Int.self, forKey: .storeId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            id = try container.decode(String.self, forKey: .id)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            sku = try container.decode(String.self, forKey: .sku)

            itemSize = try container.decode(String.self, forKey: .itemSize)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var sellerIdentifier: String

        public var discount: Double

        public var priceMarked: Double

        public var priceEffective: Double

        public var storeId: Int

        public var itemId: Int

        public var identifier: [String: Any]

        public var transferPrice: Int

        public var pdfLinks: MarketPlacePdf?

        public var affiliateMeta: [String: Any]

        public var avlQty: Int

        public var fyndStoreId: String

        public var unitPrice: Double

        public var deliveryCharge: Double

        public var id: String

        public var amountPaid: Double

        public var quantity: Int

        public var affiliateStoreId: String

        public var companyId: Int

        public var modifiedOn: String

        public var hsnCodeId: String

        public var sku: String

        public var itemSize: String

        public enum CodingKeys: String, CodingKey {
            case sellerIdentifier = "seller_identifier"

            case discount

            case priceMarked = "price_marked"

            case priceEffective = "price_effective"

            case storeId = "store_id"

            case itemId = "item_id"

            case identifier

            case transferPrice = "transfer_price"

            case pdfLinks = "pdf_links"

            case affiliateMeta = "affiliate_meta"

            case avlQty = "avl_qty"

            case fyndStoreId = "fynd_store_id"

            case unitPrice = "unit_price"

            case deliveryCharge = "delivery_charge"

            case id = "_id"

            case amountPaid = "amount_paid"

            case quantity

            case affiliateStoreId = "affiliate_store_id"

            case companyId = "company_id"

            case modifiedOn = "modified_on"

            case hsnCodeId = "hsn_code_id"

            case sku

            case itemSize = "item_size"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.sellerIdentifier = sellerIdentifier

            self.discount = discount

            self.priceMarked = priceMarked

            self.priceEffective = priceEffective

            self.storeId = storeId

            self.itemId = itemId

            self.identifier = identifier

            self.transferPrice = transferPrice

            self.pdfLinks = pdfLinks

            self.affiliateMeta = affiliateMeta

            self.avlQty = avlQty

            self.fyndStoreId = fyndStoreId

            self.unitPrice = unitPrice

            self.deliveryCharge = deliveryCharge

            self.id = id

            self.amountPaid = amountPaid

            self.quantity = quantity

            self.affiliateStoreId = affiliateStoreId

            self.companyId = companyId

            self.modifiedOn = modifiedOn

            self.hsnCodeId = hsnCodeId

            self.sku = sku

            self.itemSize = itemSize
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            discount = try container.decode(Double.self, forKey: .discount)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            storeId = try container.decode(Int.self, forKey: .storeId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            id = try container.decode(String.self, forKey: .id)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            sku = try container.decode(String.self, forKey: .sku)

            itemSize = try container.decode(String.self, forKey: .itemSize)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)
        }
    }
}
