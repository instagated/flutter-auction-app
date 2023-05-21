import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:user_repository/user_repository.dart';
import 'package:auction_repository/auction_repository.dart';

part 'bid.g.dart';
part 'bid_with_auction.dart';

@JsonSerializable()
class Bid extends Equatable {
  final String id;
  final String auctionId;
  final int bidPrice;
  final User? bidder;
  final DateTime createdAt;
  final String? profileImageUrl;
  final bool mine;

  const Bid({
    required this.id,
    required this.auctionId,
    required this.bidPrice,
    this.bidder,
    required this.createdAt,
    required this.profileImageUrl,
    this.mine = false,
  });

  factory Bid.fromJson(Map<String, dynamic> json) => _$BidFromJson(json);

  Map<String, dynamic> toJson() => _$BidToJson(this);

  @override
  List<Object?> get props => [
        id,
        auctionId,
        bidPrice,
        bidder,
        createdAt,
        profileImageUrl,
        mine,
      ];
}
